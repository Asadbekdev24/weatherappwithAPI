// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ikkinchiOyna extends StatelessWidget {
  const ikkinchiOyna({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("Salom"),
        //),
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            // const Color(0xff19C3FB).withOpacity(1),
            // const Color(0xff1D71F2).withOpacity(1),

            const Color(0xff1492BA1).withOpacity(1),
            const Color(0xff3E2D8F).withOpacity(1),
            const Color(0xff8E78C8).withOpacity(1),
            // const Color(0xff9D52ACB2).withOpacity(1),
            // const Color(0xff3B267BB2).withOpacity(0.5),

            //const Color(0xffF7CBFD80).withOpacity(0.5),
            //const Color(0xffFFFFFF00).withOpacity(0),
          ])),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/bulut.png",
            height: 180,
            width: 180,
          ),
          Text(
            "19°",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Precipitations',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.05,
              letterSpacing: 0.47,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          const Text(
            'Max: 24°   Min:18°',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0.05,
              letterSpacing: 0.47,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Image.asset(
            "assets/images/House.png",
            height: 150,
            width: 252,
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text("July, 21",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomObHavo(
                    text: "19°C",
                    rasm: "assets/images/bulut1.png",
                    obHavo: "15.00"),
                CustomObHavo(
                    text: "15°C",
                    rasm: "assets/images/bulut1.png",
                    obHavo: "16.00"),
                CustomObHavo(
                    text: "14°C",
                    rasm: "assets/images/bulut1.png",
                    obHavo: "17.00"),
                CustomObHavo(
                    text: "31°C",
                    rasm: "assets/images/bulut1.png",
                    obHavo: "19.00"),
              ],
            ),
          ),

          // bottomNavigationBar: const TabBar(
          //   tabs:[
          //     Tab(Icon(Icons.home), Text("Bosh sahifa")),
          //     Tab(Icon(Icons.home), Text("Bosh sahifa")),
          //     Tab(Icon(Icons.home), Text("Bosh sahifa")),
          //   ]
          // )
        ],
      ),
    ));
  }
}

class CustomObHavo extends StatelessWidget {
  final String text;
  final String rasm;
  final String obHavo;

  const CustomObHavo(
      {required this.text, required this.rasm, required this.obHavo});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        Image.asset(rasm),
        Text(obHavo),
      ],
    );
  }
}
