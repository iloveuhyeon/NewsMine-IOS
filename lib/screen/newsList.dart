import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("asset/ex3.jpg"),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "디지털데일리",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "“그대로 베꼈다” 왓챠 대 LGU+ ‘기술탈취’ 공...",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "# IT # 과학 # 경제 ",
                  style: TextStyle(
                      color: Color.fromARGB(
                        255,
                        13,
                        85,
                        192,
                      ),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "2023.12.21. 오전 9:30",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.5), fontSize: 12),
                )
              ],
            ),
            Image.asset("asset/ex2.png")
          ],
        ),
      ),
    );
  }
}
