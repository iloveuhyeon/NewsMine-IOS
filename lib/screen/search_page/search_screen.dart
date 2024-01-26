import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    print("정치 뉴스");
                  },
                  child: Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff366dff),
                        ),
                        height: 30,
                        width: 30,
                        child: const Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 17,
                      ),
                      const Text(
                        "정치 뉴스",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.cancel_outlined),
                  color: const Color(0xff366dff),
                  iconSize: 30,
                  splashRadius: 20,
                  onPressed: () {
                    print("delete");
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
