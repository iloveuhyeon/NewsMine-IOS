import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double mediaHeight(BuildContext context, double height) =>
      MediaQuery.of(context).size.height * height;

  double mediaWidth(BuildContext context, double width) =>
      MediaQuery.of(context).size.height * width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'asset/logo.jpg',
          height: mediaHeight(context, 0.06),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: const Color(0xff0047ff),
              iconSize: mediaHeight(context, 0.05),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: mediaHeight(context, 0.01)),
          child: Column(
            children: [
              Stack(children: [
                Image.asset('asset/ex1.jpg'),
                const Positioned(
                  bottom: 10,
                  child: Column(
                    children: [
                      Positioned(
                        bottom: 10,
                        child: Text(
                          "생존경쟁 불붙은 OTT…국내외 예외없다",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        "온라인동영상서비스(OTT) 플랫폼의 생존경쟁에 불이 붙었다. 시장이 빠르게 포화상태에...",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
