import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  late TextEditingController _controller;

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
          Column(
            children: [
              Row(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                        labelText: '아무거나 입력하세요',
                        helperText: '공백, 글자, 숫자, 특수문자가 가능해요',
                        hintText: '???', //글자를 입력하면 사라진다.
                        icon: Icon(Icons.android),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.all(3)),
                    onSubmitted: (String value) async {
                      await showDialog<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Thanks!'),
                            content: Text(
                                'You typed "$value", which has length ${value.characters.length}.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
