// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'faq_categories_page.dart';

class PsychiatricAdviceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PsychiatricAdvicePage(),
    );
  }
}

class PsychiatricAdvicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Psychiatric  Advice'),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/psychiatric_advise.png', // Replace with your image path
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
