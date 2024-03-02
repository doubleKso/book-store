import 'package:book_store/components/book.dart';
import 'package:book_store/components/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Book book;
  CartItem({super.key, required this.book});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.book);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.book.imagePath),
        title: Text(widget.book.name),
        subtitle: Text(widget.book.price),
        trailing: IconButton(
          onPressed: removeItemFromCart,
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
