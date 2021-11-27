import 'package:flutter/material.dart';

class InstegramStories extends StatelessWidget {
  final String text;

  InstegramStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              )),
          SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
