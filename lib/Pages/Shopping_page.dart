import 'dart:nativewrappers/_internal/vm/lib/convert_patch.dart';

import 'package:flutter/material.dart';
import "package:liams/components/Search_bar.dart";
import "package:liams/components/FashionTile.dart";
import 'package:liams/models/Cart.dart';
import 'package:liams/models/clothe.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  // dynamic products;
  void addClotheToCart(Clothe clothe) {
    Provider.of<Cart>(context, listen: false).addToCart(clothe);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Item added to cart"),
              content: Text("Check your cart"),
            ));
  }

  void initState() {
    super.initState();
  }

  // fetchProducts() {
    // var url = "http://localhost:4040/ap/products";
  //   http
  //       .get(Uri.parse(url))
  //       .then((value) => setState(() {
  //             products = value.body;
  //           }))
  //       .catchError((err) => print(err));
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                SearchInput(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "You really need to try this",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue[500],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.clotheShop.length,
                      itemBuilder: (context, index) {
                        Clothe clothe = value.getClothes()[index];
                        return Fashiontile(
                            clothe: clothe,
                            onClick: () => addClotheToCart(clothe));
                      }),
                ))
              ],
            ));
  }
}
