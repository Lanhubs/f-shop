import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size;
  final double radius;
  const Logo({
    super.key,
    required this.size,
    required this.radius,
    
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipOval(
          child: SizedBox.fromSize(
            size: Size.fromRadius(radius),
            child: Image.asset("lib/images/cargo_acid.jpg",
                width: size, height: size),
          ),
        ),
        const Text(
          "Hoods",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        )
      ],
    );
  }
}
