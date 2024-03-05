import 'package:flutter/material.dart';
import 'package:picnic_news_my/component/search_recode.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _controller;
  String textContent = "";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 56,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xff366dff),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  cursorColor: Colors.white,
                  controller: _controller,
                  onChanged: (value) {
                    setState(() {
                      textContent = _controller.text;
                    });
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "입력하세요",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SearchRecode(
            searchText: textContent,
          ),
          SearchRecode(
            searchText: textContent,
          ),
          SearchRecode(
            searchText: textContent,
          )
        ],
      ),
    );
  }
}
