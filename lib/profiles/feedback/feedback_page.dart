// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'feedback_form.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _formKey = GlobalKey<FormState>();
  final FeedbackForm feedback = FeedbackForm(
    name: '', // Provide a default name or initial value
    email: '', // Provide a default email or initial value
    feedback: '', // Provide a default feedback or initial value
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mehfooz Aashiyana Feedback'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/feedback.png', // Replace with the actual path to your image
              height: 200, // Adjust the height as needed
            ),
            FeedbackFormWidget(formKey: _formKey, feedback: feedback),
          ],
        ),
      ),
    );
  }
}
