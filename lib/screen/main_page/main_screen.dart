import 'package:flutter/material.dart';
import 'package:picnic_news_my/sample/sample01.dart';
import 'package:picnic_news_my/component/main_stack_content.dart';
import 'package:picnic_news_my/component/news_list.dart';
import 'package:picnic_news_my/screen/main_page/appbar_screen.dart';

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
      appBar: appbar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: mediaHeight(context, 0.02)),
          child: Column(
            children: [
              const MainContent(),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    circleButton(
                      icon: Icons.fire_extinguisher,
                      text: "인기",
                      choice: 1,
                    ),
                    circleButton(
                      icon: Icons.monetization_on,
                      text: "정치/경제",
                      choice: 2,
                    ),
                    circleButton(
                      icon: Icons.science,
                      text: "IT/과학",
                      choice: 3,
                    ),
                    circleButton(
                      icon: Icons.wordpress_outlined,
                      text: "세계",
                      choice: 4,
                    ),
                    circleButton(
                      icon: Icons.sports,
                      text: "스포츠",
                      choice: 5,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const NewsList(),
              const NewsList(),
              const NewsList(),
              const NewsList(),
              const NewsList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget circleButton(
      {required int choice, required String text, required IconData icon}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Test.test2.forEach((key, value) {
            Test.test2[key] = (key == choice) ? true : false;
          });
        });
        print(text);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.all(6),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  Test.test2[choice]! ? Colors.white : const Color(0xff366dff),
              border: Border.all(
                color: const Color(0xff366dff),
                width: 3,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Icon(
                  icon,
                  color: Test.test2[choice]!
                      ? const Color(0xff366dff)
                      : Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Color(0xff366dff),
            ),
          )
        ],
      ),
    );
  }
}
