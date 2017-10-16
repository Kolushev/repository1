package net.alexk.bookmanager.controller;

import net.alexk.bookmanager.service.BookService;
import net.alexk.bookmanager.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class BookController {
    private BookService bookService;

    @Autowired(required = true)
    @Qualifier(value = "bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "books", method = RequestMethod.GET)
    public String listBooks(Model model, @RequestParam(required = false) Integer page){

        model.addAttribute("book", new Book());

        List<Book> bookList = this.bookService.listBooks();
        PagedListHolder<Book> pagedListHolder = new PagedListHolder<Book>(bookList);
        pagedListHolder.setPageSize(10);
        int numberOfPages = pagedListHolder.getPageCount();
        model.addAttribute("maxPages", numberOfPages);

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;

        model.addAttribute("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            bookList = pagedListHolder.getPageList();
            model.addAttribute("listBooks", bookList);
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            bookList = pagedListHolder.getPageList();
            model.addAttribute("listBooks", bookList);
        }

        return "books";
    }


    @RequestMapping(value = "search_book", method = RequestMethod.POST)
    public String search(@RequestParam String title, Model model) {
        model.addAttribute("book", new Book());
        model.addAttribute("listBooks", bookService.search(title));

        return "search";
    }




    @RequestMapping(value = "/books/add", method = RequestMethod.POST)
    public String addBook(@ModelAttribute("book") Book book){
        if(book.getId() == 0){
            this.bookService.addBook(book);
        }else {
            this.bookService.updateBook(book);
        }

        return "redirect:/books";
    }

    @RequestMapping(value = "/bookdata", method = RequestMethod.POST)
    public String updateBook(@ModelAttribute("book") Book book){

            this.bookService.updateBook(book);


        return "redirect:/books";
    }



    @RequestMapping("/read/{id}")
    public String readBook(@PathVariable("id") int id){
        this.bookService.readBook(this.bookService.getBookById(id));

        return "redirect:/books";
    }

    @RequestMapping("/remove/{id}")
    public String removeBook(@PathVariable("id") int id){
        this.bookService.removeBook(id);

        return "redirect:/books";
    }

    @RequestMapping("edit/{id}")
    public String editBook(@PathVariable("id") int id, Model model){
        model.addAttribute("book", this.bookService.getBookById(id));
        model.addAttribute("listBooks", this.bookService.listBooks());

        return "books";
    }

    @RequestMapping("bookdata/{id}")
    public String bookData(@PathVariable("id") int id, Model model){
        model.addAttribute("book", this.bookService.getBookById(id));

        return "bookdata";
    }
}
