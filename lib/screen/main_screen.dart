import 'package:flutter/material.dart';
import 'package:picnic_news_my/sample02.dart';
import 'package:picnic_news_my/screen/appbar_screen.dart';
import 'package:picnic_news_my/screen/mainstackcontent_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  double mediaHeight(BuildContext context, double height) =>
      MediaQuery.of(context).size.height * height;

  double mediaWidth(BuildContext context, double width) =>
      MediaQuery.of(context).size.height * width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: mediaHeight(context, 0.02)),
          child: Column(
            children: [
              MainStackContent(context),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    sample02(Icons.fireplace, "인기", true),
                    sample02(Icons.monetization_on, "정치/경제", false),
                    sample02(Icons.science, "IT/과학", false),
                    sample02(Icons.wordpress_outlined, "세계", false),
                    sample02(Icons.sports, "스포츠", false),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
