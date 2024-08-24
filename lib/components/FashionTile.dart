import 'package:flutter/material.dart';
import "package:liams/models/clothe.dart";

class Fashiontile extends StatelessWidget {
  Clothe clothe;
  String naira = String.fromCharCode(0x20A6);
  void Function()? onClick;
  Fashiontile({super.key, required this.clothe, required this.onClick});


  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(left: 20),r
      margin: EdgeInsets.only(left: 25),

      width: 280,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            child: Image.asset(clothe.image),
            borderRadius: BorderRadius.circular(12),
          ),
          Text(clothe.description),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(clothe.name,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(naira + clothe.price,
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 18)),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onClick,
                child: Container(
                  child: Icon(
                    Icons.add,
                    size: 25,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
