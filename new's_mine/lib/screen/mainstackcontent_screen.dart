import 'package:flutter/material.dart';
import 'package:picnic_news_my/screen/appbar_screen.dart';
import 'package:picnic_news_my/screen/main_screen.dart';
import 'package:picnic_news_my/widget/circleIcon_widget.dart';

Stack MainStackContent(BuildContext context) {
  return Stack(
    children: [
      GestureDetector(
        onTap: () {
          print("hello world");
        },
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image.asset('asset/ex1.jpg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "생존경쟁 불붙은 OTT…국내외 예외없다",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: mediaHeight(context, 0.01),
                  ),
                  const Text(
                    "온라인동영상서비스(OTT) 플랫폼의 생존경쟁에 불이 붙었다. 시장이 빠르게 포화상태에...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: mediaHeight(context, 0.04),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: MainScreenState().mediaHeight(context, 0.54),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            circleIcon(false),
            circleIcon(true),
            circleIcon(false),
            circleIcon(false),
          ],
        ),
      )
    ],
  );
}
