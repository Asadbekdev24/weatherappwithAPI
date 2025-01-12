import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(colors: [
          Color(0xffF7CBFD),
          Color(0xff7758D1),
        ])),
        child: Column(
          children: [
            Image.asset(
              "assets/images/bulut.png",
              height: 350,
              width: 350,
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Weather",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 54,
                    ),
                  ),
                  Text(
                    "ForeCasts",
                    style: TextStyle(
                      color: Color(0xffDDB130),
                      fontSize: 54,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("hello, joe");
                      Navigator.pushNamed(context, '/ikkinchiOyna');
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 70),
                        backgroundColor: Color(0xffDDB130)),
                    child: const Text(
                      "Get Start",
                      style: TextStyle(color: Color(0xff7758D1), fontSize: 24),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
