// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class FeedbackForm {
  String name = '';
  String email = '';
  String feedback = '';

  FeedbackForm({required this.name, required this.email, required this.feedback});
}

class FeedbackFormWidget extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final FeedbackForm feedback;

  FeedbackFormWidget({required this.formKey, required this.feedback});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
            onSaved: (value) {
              feedback.name = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
            onSaved: (value) {
              feedback.email = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Feedback'),
            maxLines: 5,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your feedback';
              }
              return null;
            },
            onSaved: (value) {
              feedback.feedback = value!;
            },
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // Send the feedback data to the server or save it locally
                // Add your code for handling the feedback here
              }
            },
            child: Text('Submit Feedback'),
          ),
        ],
      ),
    );
  }
}
