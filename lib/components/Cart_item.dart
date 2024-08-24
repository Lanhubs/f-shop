import 'package:flutter/material.dart';
import 'package:liams/models/Cart.dart';
import 'package:liams/models/clothe.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  final Clothe clothe;
  
   const CartItem({super.key, required this.clothe,});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeCartItem(widget.clothe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 15),
      child: ListTile(
        leading: Image.asset(widget.clothe.image),
        title: Text(widget.clothe.name,
            style: TextStyle(color: Colors.black, fontSize: 18)),
        subtitle: Text(widget.clothe.price,
            style: TextStyle(color: Colors.black, fontSize: 14)),
        trailing: IconButton(
          onPressed:()=> removeItemFromCart(),
          icon: Icon(
            Icons.delete_outline,
            color: Colors.red[500],
          ),
        ),
      ),
    );
  }
}
