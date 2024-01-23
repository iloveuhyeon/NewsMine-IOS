import 'package:flutter/material.dart';
import 'package:picnic_news_my/screen/main_page/appbar_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text("hello world\n my name is park yu yeon"),
        ],
      ),
    );
  }
}
