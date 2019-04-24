package com.sales.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sales.models.Book;
import com.sales.models.Customer;
import com.sales.services.BookService;
import com.sales.services.CustomerService;

@Controller
public class MainController {

	@Autowired
	BookService bookService;
	
	@Autowired
	CustomerService customerService;
	

	@RequestMapping(value = "/showBooks", method=RequestMethod.GET)
	public String listBooks(Model model) {
		List<Book> books = bookService.findAll();
		model.addAttribute("books", books);
			return "showBooks";
	}
	
	@RequestMapping(value = "/addBook", method=RequestMethod.GET)
	public String addBookGET(Model model) {

		Book book = new Book();
		model.addAttribute("book", book);
		
		return "addBook";
	}
	
	@RequestMapping(value = "/addBook", method=RequestMethod.POST)
	public String addBookPOST(@ModelAttribute("book") Book book, Model model) {
		bookService.save(book);
		return "redirect:showBooks";
	}
	
	@RequestMapping(value = "/showCustomers", method=RequestMethod.GET)
	public String listCustomers(Model model) {
		List<Customer> cust = customerService.findAll();
		model.addAttribute("cust", cust);
			return "showCustomers";
	}
	
}
