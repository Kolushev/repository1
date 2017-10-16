package net.alexk.bookmanager.service;

import net.alexk.bookmanager.model.Book;

import java.util.List;

public interface BookService {
    public void addBook(Book book);

    public void updateBook(Book book);

    public void removeBook(int id);

    public void readBook (Book book);

    public Book getBookById(int id);

    public List<Book> listBooks();

    public List<Book> search(String title);

}
