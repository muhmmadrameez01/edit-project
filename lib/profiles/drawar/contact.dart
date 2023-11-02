// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  String? validateField(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return "$fieldName can't be empty";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // This line will resize the screen when the keyboard appears
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10)),
                buildInputField(firstNameController, "First Name"),
                buildInputField(lastNameController, "Last Name"),
                buildInputField(subjectController, "Subject"),
                buildInputField(messageController, "Message", isMessageField: true),
                SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      // Form is valid, you can proceed with sending the contact details
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.all(20),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(106, 127, 247, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'Send Message',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInputField(
      TextEditingController controller, String hintText, {bool isMessageField = false}) {
    return Center(
      child: Container(
        width: 370,
        height: isMessageField ? 150 : 75,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextFormField(
          controller: controller,
          maxLines: isMessageField ? 5 : 1,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(),
            labelStyle: TextStyle(color: Colors.black, fontSize: 24.0),
          ),
          validator: (value) => validateField(value, hintText),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ContactPage(),
  ));
}
