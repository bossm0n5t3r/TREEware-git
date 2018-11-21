package com.treeware.comment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.treeware.comment.service.CommentService;

@Controller
@RequestMapping("/member/comment")
public class CommentController {

	@Autowired
	private CommentService commentService;
	
}
