package com.treeware.email.controller;

import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.treeware.common.service.CommonService;
import com.treeware.email.model.MailDto;
import com.treeware.email.model.MailGroupDto;
import com.treeware.email.service.EmailService;
import com.treeware.util.NumberCheck;
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
	
	//메일함 리스트 가져오기
	@RequestMapping(value="/getMailList.tree", method=RequestMethod.POST)
	public @ResponseBody String getMailList(@RequestParam Map<String, String> map) {
		JSONObject object = new JSONObject();
		List<MailDto> list = emailService.listMail(map);
		System.out.println(map);
		JSONArray mailArray = new JSONArray();
		for(MailDto dto : list) {
			JSONObject mailDto = new JSONObject();
			mailDto.put("ml_sq",dto.getMl_sq());
			mailDto.put("ml_grp_sq",dto.getMl_grp_sq());
			mailDto.put("ml_stt_sq",dto.getMl_stt_sq());
			mailDto.put("emp_sq",dto.getEmp_sq()==null ? "-" : dto.getEmp_sq());
			mailDto.put("ml_snd_add",dto.getMl_snd_add());
			mailDto.put("ml_rcv_add",dto.getMl_rcv_add());
			mailDto.put("ml_send_date",dto.getMl_send_date());
			mailDto.put("ml_ttl",dto.getMl_ttl());
			mailDto.put("ml_ctt",dto.getMl_ctt()==null ? "-" : dto.getMl_ctt());
			mailDto.put("ml_fl_nm",dto.getMl_fl_nm()==null ? "-" : dto.getMl_fl_nm());
			mailDto.put("ml_fl_rt",dto.getMl_fl_rt()==null ? "-" : dto.getMl_fl_rt());
			mailArray.put(mailDto);
		}
		object.put("mailList", mailArray);
		object.put("page", list.size());
		System.out.println(object.toString());
		return object.toString();
	}

	@RequestMapping("/newmailbox1.tree")
	public ModelAndView newMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/newmailbox");
		return mav;
	}

	//받은메일함으로 이동
	@RequestMapping("/receivemailbox.tree")
	public ModelAndView receiveMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/receivemailbox");
		return mav;
	}
	//보낸메일함으로 이동
	@RequestMapping("/sendmailbox.tree")
	public ModelAndView sendMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/sendmailbox");
		return mav;
	}

//	@RequestMapping("/sendmailbox.tree")
//	@ResponseBody
//	public String sendMailBox(@RequestParam Map<String, String> map, HttpServletRequest request) {
//		System.out.println(map.get("ml_grp_sq"));
//		System.out.println(map.get("pg"));
//		
//		List<MailDto> list = emailService.listMail(map);
//		PageNavigation navigator = commonService.makePageNavigation(map);
//		navigator.setRoot(request.getContextPath());
//		navigator.setKey(map.get("key"));
//		navigator.setWord(map.get("word"));
////		navigator.setNavigator();
//		
//		ModelAndView mav = new ModelAndView();
//
//		JSONObject json = new JSONObject();
//		json.put("mailList", list)
//		
//
//		mav.addObject("navigator", navigator);
//		mav.setViewName("member/mail/sendmailbox");
//		return mav;
//	}
	
	//휴지통으로 이동
	@RequestMapping("/trashmailbox.tree")
	public ModelAndView trashMailBox() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/trashmailbox");
		return mav;
	}

//	@RequestMapping("/trashmailbox.tree")
//	public ModelAndView trashMailBox(@RequestParam Map<String, String> map, HttpServletRequest request) {
//		List<MailDto> list = emailService.listMail(map);
//		PageNavigation navigator = commonService.makePageNavigation(map);
//		navigator.setRoot(request.getContextPath());
//		navigator.setKey(map.get("key"));
//		navigator.setWord(map.get("word"));
//		
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("mailList", list);
//		mav.addObject("navigator", navigator);
//		mav.setViewName("member/mail/trashmailbox");
//		return mav;
//	}
	
	//메일 내용 보여주기
	@RequestMapping("/view.tree")
	public ModelAndView view(@RequestParam int ml_sq) {
		MailDto mailDto = emailService.viewMail(ml_sq);
		ModelAndView mav = new ModelAndView();
		mav.addObject("mail", mailDto);
		mav.setViewName("member/mail/view");
		return mav;
	}
	
	//휴지통으로 이동
	@RequestMapping(value="/movetrashmail.tree", method = RequestMethod.POST)
	@ResponseBody	
	public String moveTrashMailbox(@RequestParam(value="myArray[]") List<String> myArray, Map<String,String> map)  {
		
		for(String ml_sq : myArray) {
			emailService.moveTrashMailbox(NumberCheck.nullToZero(ml_sq));
			
		}	
		return "member/mail/sendmailbox";
	}
	//전달 버튼
	@RequestMapping("/delivery.tree")
	public ModelAndView delivery(@RequestParam int ml_sq) {
		List<MailDto> list = emailService.delivery(ml_sq);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("mailList", list);
		mav.setViewName("member/mail/delivery_write");
	
		return mav;
	}
	//메일쓰기로 이동
	@RequestMapping(value = "/write.tree", method = RequestMethod.GET)
	public ModelAndView write() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/mail/write");
		return mav;
	}
	//메일 전송
	@RequestMapping(value = "/write.tree", method = RequestMethod.POST)
	public String sendEmailAction(@RequestParam Map<String, String> map) throws Exception {

		int seq = 0;
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
			System.out.println("MailException �߻�");
			e.printStackTrace();
		}

		return seq != 0 ? "member/mail/writeok" : "member/mail/writefail";
	}
	
	//	메일함 추가 버튼
	@RequestMapping("/addmailbox.tree")
	public String addmailbox(@RequestParam Map<String, String> map) {
		MailGroupDto mailGroupDto = new MailGroupDto();
		mailGroupDto.setMl_grp_nm(map.get("mailboxname"));
		int seq = emailService.addMailbox(mailGroupDto);
		
		return "member/mail/receivemailbox";
	}
	
	// 메일함 펼치기 버튼
	@RequestMapping("/listmailbox.tree")
	public ModelAndView listmailbox(@RequestParam Map<String, String> map) {
		List<MailGroupDto> list = emailService.listMailbox();
		ModelAndView mav = new ModelAndView();
		mav.addObject("mailBox",list);
		mav.setViewName("member/mail/receivemailbox");
		return mav;
	}
	
	// 추가 메일함 클릭시 보여주는 메일함(추가 메일함 공통)
	@RequestMapping("/addlistview.tree")
	public ModelAndView addlistview(@RequestParam Map<String, String> map, HttpServletRequest request) {
		System.out.println("addlistview 넘어옴");
		System.out.println(map);
		List<MailDto> list = emailService.listMail(map);
		System.out.print(list);
		List<MailGroupDto> list2 = emailService.addMailbox_list(map);
		System.out.print(list2);
		PageNavigation navigator = commonService.makePageNavigation(map);
		navigator.setRoot(request.getContextPath());
		navigator.setKey(map.get("key"));
		navigator.setWord(map.get("word"));
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("mailList", list);	
		mav.addObject("mailGroup", list2);
		mav.addObject("navigator", navigator);
		mav.setViewName("member/mail/addlist");
		return mav;
	}
	//비우기 버튼 (휴지통 데이터 모두 삭제)
	@RequestMapping("/deleteall.tree")
	public ModelAndView alldelete(@RequestParam Map<String, String> map) {
		List<MailGroupDto> list = emailService.listMailbox();
		ModelAndView mav = new ModelAndView();
		mav.addObject("mailBox",list);
		mav.setViewName("member/mail/receivemailbox");
		return mav;
	}

	
	
}
