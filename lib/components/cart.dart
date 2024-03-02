import 'package:book_store/components/book.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Book> bookShop = [
    Book(
      name: 'Chan Myae Win1',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book1.png',
      price: '8000MMK',
    ),
    Book(
      name: 'Business Man',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book12.png',
      price: '5000MMK',
    ),
    Book(
      name: 'Genius',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book11.png',
      price: '5000MMK',
    ),
    Book(
      name: 'Dale Carnegie',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book19.png',
      price: '7000MMK',
    ),
    Book(
      name: 'Thoe Saung',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book14.png',
      price: '5000MMK',
    ),
    Book(
      name: 'Aung Thin:Beautiful',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book15.png',
      price: '5000MMK',
    ),
    Book(
      name: 'P Moe Ninn1',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book16.png',
      price: '4500MMK',
    ),
    Book(
      name: 'Poor Dad:Rich Dad',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book17.png',
      price: '4000MMK',
    ),
    Book(
      name: 'I am here for me',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book18.png',
      price: '5000MMK',
    ),
    Book(
      name: 'Dr.Moe',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book13.png',
      price: '4000MMK',
    ),
    Book(
      name: 'Phay Myint1',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book21.png',
      price: '6000MMK',
    ),
    Book(
      name: 'Naing Thit',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book2.png',
      price: '4500MMK',
    ),
    Book(
      name: 'Phay Myint2',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book3.png',
      price: '4500MMK',
    ),
    Book(
      name: 'Mya Than Tint',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book4.png',
      price: '5000MMK',
    ),
    Book(
      name: 'Psychology',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book5.png',
      price: '4000MMK',
    ),
    Book(
      name: 'San Lwin',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book6.png',
      price: '4000MMK',
    ),
    Book(
      name: 'Book World',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book7.png',
      price: '4000MMK',
    ),
    Book(
      name: 'Phay Myint3',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book8.png',
      price: '5000MMK',
    ),
    Book(
      name: 'Bamaw Thein Phay',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book9.png',
      price: '4500MMK',
    ),
    Book(
      name: 'Phay Myint4',
      description: 'Books that make you feel intelligent and smart!',
      imagePath: 'assets/book10.png',
      price: '5000MMK',
    ),
  ];

  List<Book> userCart = [];

  List<Book> getShowList() {
    return bookShop;
  }

  List<Book> getUserCart() {
    return userCart;
  }

  void addItemToCart(Book book) {
    userCart.add(book);
    notifyListeners();
  }

  void removeItemFromCart(Book book) {
    userCart.remove(book);
    notifyListeners();
  }
}
