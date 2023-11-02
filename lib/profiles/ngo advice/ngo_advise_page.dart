// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'ngo_categories_page.dart';

class NgoAdviseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NgoAdvisePage(),
    );
  }
}

class NgoAdvisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NGO Advise'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/ngo_advise.png', // Replace with your image path
            fit: BoxFit.cover,
            height: 200, // Adjust the height as needed
            width: double.infinity,
          ),
          Expanded(
            child: FAQCategories(),
          ),
        ],
      ),
    );
  }
}
