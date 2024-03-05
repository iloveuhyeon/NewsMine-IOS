import 'package:flutter/material.dart';

class SearchRecode extends StatelessWidget {
  late String searchText;
  SearchRecode({
    required this.searchText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              print(searchText);
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
                Text(
                  searchText,
                  style: const TextStyle(
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
    );
  }
}
