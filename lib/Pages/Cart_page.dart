import 'package:flutter/material.dart';
import 'package:liams/components/Cart_item.dart';
import 'package:liams/models/Cart.dart';
import 'package:liams/models/clothe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void clearCart() {
    Provider.of<Cart>(context, listen: false).clearCart();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Cart",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 14, 14, 14),
                                borderRadius: BorderRadius.circular(20)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              value.getCart().length.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => clearCart(),
                        child: Text(
                          "Clear all",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getCart().length,
                          itemBuilder: (context, index) {
                            Clothe indidualClothe = value.getCart()[index];
                            return CartItem(clothe: indidualClothe);
                          })),
                  GestureDetector(
                    onTap: () => {},
                    child: Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        child: Text(
                          "Proceed to checkout",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              ),
            ));
  }
}
