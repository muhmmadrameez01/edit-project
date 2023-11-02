// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'ngo_list_page.dart';

class FAQCategories extends StatelessWidget {
  final List<String> categories = [
    'NGO Support',
    'NGO Verification',
    'Communication with NGOs',
    'NGO Services and Specializations',
    'Collaboration and Support for NGOs',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => FAQList(category: categories[index]),
              ),
            );
          },
          child: Card(
            margin: EdgeInsets.all(8.0),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                categories[index],
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
