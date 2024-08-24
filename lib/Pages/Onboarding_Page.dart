import 'package:flutter/material.dart';
import 'package:liams/Pages/Home_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(  height: 200),
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(60),
                      child: Image.asset("lib/images/cargo_acid.jpg",
                          width: 80, height: 80),
                    ),
                  ),
                  const Text(
                    "Hoods",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Nice wears",
                style: TextStyle(color: Colors.black, fontSize: 25),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Buy your nice and befitting hoodie from here and thank us later",
                style: TextStyle(color: Colors.grey, fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 30,
                
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[900]),
                      // padding: EdgeInsets.only(top: 25, bottom: 25),
                      child: TextButton(
                        onPressed: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()))
                        },
                        child: const Text(
                          "Show now",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
