import 'package:flutter/material.dart';

import 'components/posts.dart';
import 'components/stoies.dart';

class InstegramHomeUI extends StatelessWidget {
  final List people = ['Murat', 'Can', 'Adiyaman', 'Nayime', 'Kubra'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // do something..
                    },
                    child: Icon(Icons.add),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite),
                  ),
                ],
              )
            ],
          )),
      body: Column(
        children: [
          // STORIES
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return InstegramStories(text: people[index]);
                }),
          ),

          // POSTS
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return SimpleHomePAgePosts(
                    name: people[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
