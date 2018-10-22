package com.treeware.email.controller;

import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.common.service.CommonService;
import com.treeware.email.model.MailDto;
import com.treeware.email.service.EmailService;
import com.treeware.util.PageNavigation;

@Controller
@RequestMapping("/member/mail")
public class EmailController {

	@Autowired
	private EmailService emailService;
	
	@Autowired
	private CommonService commonService;

	@Autowired
	protected JavaMailSenderImpl mailSender;

	@RequestMapping("/main.tree")
	public String main() {
		return "member/mail/main";
	}

	@RequestMapping("/newmailbox.tree")
	public ModelAndView newMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/newmailbox");
		return mav;
	}

	@RequestMapping("/receivemailbox.tree")
	public ModelAndView receiveMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/receivemailbox");
		return mav;
	}

	@RequestMapping("/sendmailbox.tree")
	public ModelAndView sendMailBox(@RequestParam Map<String, String> map, HttpServletRequest request) {
		List<MailDto> list = emailService.listMail(map);
		System.out.println(map.get("key"));
		System.out.println(map.get("word"));
		System.out.println(map.get("ml_sq"));
		PageNavigation navigator = commonService.makePageNavigation(map);
		navigator.setRoot(request.getContextPath());
		navigator.setKey(map.get("key"));
		navigator.setWord(map.get("word"));
//		navigator.setNavigator();
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("mailList", list);
		mav.addObject("navigator", navigator);
		mav.setViewName("member/mail/sendmailbox");
		return mav;
	}

	@RequestMapping("/trashmailbox.tree")
	public ModelAndView trashMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/trashmailbox");
		return mav;
	}
	
	@RequestMapping("/view.tree")
	public ModelAndView view(@RequestParam int ml_sq) {
		MailDto mailDto = emailService.viewMail(ml_sq);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mail", mailDto);
		mav.setViewName("member/mail/view");
		return mav;
	}
	
//	@RequestMapping("/delete.tree")
//	public ModelAndView delete(@RequestParam Map<String, String> map) {
//		System.out.println(map.get("ml_grp_sq"));
//		System.out.println(map.get("ml_sq"));
//		int cnt = emailService.deleteMail(Integer.parseInt(map.get("ml_sq")));
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("cnt", cnt);
//		mav.setViewName("member/mail/sendmailbox");
//		return mav;
//	}
	
	@RequestMapping("/delete.tree")
	public String controllerMethod(@RequestParam(value="myArray[]") Integer[] myArray){
	    System.out.println(myArray);
	    return "member/mail/sendmailbox";
	}

	@RequestMapping(value = "/write.tree", method = RequestMethod.GET)
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/write");
		return mav;
	}

	@RequestMapping(value = "/write.tree", method = RequestMethod.POST)
	public String sendEmailAction(@RequestParam Map<String, String> map) throws Exception {

		int seq = 0;
		System.out.println(map.toString());
		MailDto mailDto = new MailDto();
		mailDto.setMl_rcv_add(map.get("receiver"));
		mailDto.setMl_ttl(map.get("title"));
		mailDto.setMl_ctt(map.get("content"));
		mailDto.setMl_snd_add(mailSender.getUsername().toString());
		mailDto.setEmp_sq(map.get("emp_sq"));

		System.out.println(map.get("emp_sq"));

		MimeMessage msg = mailSender.createMimeMessage();
		try {

			msg.setSubject(mailDto.getMl_ttl());
			msg.setText(mailDto.getMl_ctt());
			msg.setRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(mailDto.getMl_rcv_add()));

		} catch (MessagingException e) {
			System.out.println("MessagingException");
			e.printStackTrace();
		}

		try {
			mailSender.send(msg);
			seq = emailService.sendMail(mailDto);

		} catch (MailException e) {
			System.out.println("MailException ¹ß»ý");
			e.printStackTrace();
		}

		return seq != 0 ? "member/mail/writeok" : "member/mail/writefail";
	}

}
