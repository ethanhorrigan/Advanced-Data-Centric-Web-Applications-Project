package com.sales.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sales.repositories.BookRepository;
import com.sales.models.Book;

@Service
public class BookService {

	@Autowired
	BookRepository bookRepository;
	
	public List<Book> findAll() {
		return (List<Book>) bookRepository.findAll();
	}
	
	public Book save(Book book) {
		return bookRepository.save(book);
	}
}
