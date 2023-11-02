// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'ngo_item_card.dart';

class FAQList extends StatelessWidget {
  final String category;

  FAQList({required this.category});

  final List<FAQItem> faqs = [
    FAQItem(
      question:
          'How do NGOs on Mehfooz Aashiyanna assist victims of domestic violence and harassment?',
      answer:
          'NGOs on Mehfooz Aashiyanna provide a range of support services, including shelter, counseling, legal aid, and more, tailored to the needs of domestic violence and harassment victims.',
      category: 'NGO Support',
    ),
    FAQItem(
      question: 'How can I find an NGO on the app to seek help?',
      answer:
          'After registering on the app, you can use the location-based search feature to find the nearest NGOs in your area that can provide assistance.',
      category: 'NGO Support',
    ),
    FAQItem(
      question:
          'Are the services provided by the affiliated NGOs free of charge?',
      answer:
          ' Many of the services provided by affiliated NGOs are free, but it may vary depending on the specific services required. The app will indicate whether there are any associated costs.',
      category: 'NGO Support',
    ),
    FAQItem(
      question: 'How can I contact an NGO through the app?',
      answer:
          'The app provides a direct communication channel to connect with the selected NGO for assistance and support.',
      category: 'NGO Support',
    ),
    FAQItem(
      question:
          'Can I choose a specific NGO, or will the app assign one to me?',
      answer:
          'You can choose a specific NGO based on your preferences and location, but in emergencies, the app can also connect you with the nearest available NGO.',
      category: 'NGO Support',
    ),
    FAQItem(
      question:
          'How can I be sure that the NGOs listed on the app are legitimate and trustworthy?',
      answer:
          'All NGOs listed on Mehfooz Aashiyanna go through a thorough vetting and verification process to ensure their legitimacy and trustworthiness.',
      category: 'NGO Verification',
    ),
    FAQItem(
      question: 'Can I view information about the NGOs before selecting one?',
      answer:
          'Yes, you can view detailed information about each NGO, including their services, location, and contact details, to make an informed choice.',
      category: 'NGO Verification',
    ),
    FAQItem(
      question:
          'Is there a way to report concerns about an NGO listed on the app?',
      answer:
          'Yes, you can report any concerns about the legitimacy or behavior of an NGO through the app. We take these reports seriously.',
      category: 'NGO Verification',
    ),
    FAQItem(
      question:
          'How can I verify the qualifications and credentials of the professionals working with the NGOs?',
      answer:
          'The app provides information on the qualifications and credentials of the professionals working with each NGO, ensuring transparency.',
      category: 'NGO Verification',
    ),
    FAQItem(
      question: 'What should I do if I have a bad experience with an NGO?',
      answer:
          'If you have a negative experience with an NGO, please report it through the app, and we will take appropriate action to address the issue.',
      category: 'NGO Verification',
    ),
    FAQItem(
      question:
          'Can I reach out to an NGO directly through the app without disclosing my identity?',
      answer:
          'Yes, you can contact an NGO through the app while keeping your identity confidential to the extent permitted by law.',
      category: 'Communication with NGOs',
    ),
    FAQItem(
      question:
          'Is there a chat or messaging feature to communicate with NGOs?',
      answer:
          'Yes, the app includes a chat or messaging feature that allows you to communicate directly with the selected NGO for assistance.',
      category: 'Communication with NGOs',
    ),
    FAQItem(
      question:
          'How can I schedule an appointment or request help from an NGO?',
      answer:
          'You can use the app to schedule appointments or request assistance from an NGO, and they will respond accordingly.',
      category: 'Communication with NGOs',
    ),
    FAQItem(
      question:
          'Can I ask questions or seek advice from an NGO before making a decision?',
      answer:
          'Yes, you can use the communication features to ask questions and seek advice from an NGO before deciding on the support you need.',
      category: 'Communication with NGOs',
    ),
    FAQItem(
      question:
          'How quickly can I expect a response from an NGO through the app?',
      answer:
          'Response times may vary, but most NGOs aim to respond as quickly as possible, especially in emergency situations.',
      category: 'Communication with NGOs',
    ),
    FAQItem(
      question: 'What types of services do the affiliated NGOs specialize in?',
      answer:
          'Affiliated NGOs on Mehfooz Aashiyanna may specialize in various services, including shelter, legal support, counseling, child protection, and more. You can choose an NGO based on your specific needs.',
      category: 'NGO Services and Specializations',
    ),
    FAQItem(
      question:
          'Can I find an NGO that specializes in a particular aspect of support, such as legal assistance or counseling?',
      answer:
          'Yes, you can search for NGOs that specialize in specific areas of support by using the search and filtering features in the app.',
      category: 'NGO Services and Specializations',
    ),
    FAQItem(
      question:
          'Are there NGOs that focus on supporting children who are victims of domestic violence?',
      answer:
          'Yes, there are NGOs on the app that specialize in providing support to children who are victims of domestic violence or harassment.',
      category: 'NGO Services and Specializations',
    ),
    FAQItem(
      question:
          'Can I get information on the languages and communication methods offered by the NGOs?',
      answer:
          'The app provides details on the languages spoken and the communication methods available for each NGO, ensuring you can communicate effectively.',
      category: 'NGO Services and Specializations',
    ),
    FAQItem(
      question:
          'How can I choose an NGO that aligns with my cultural or religious preferences?',
      answer:
          'The app allows you to filter NGOs based on cultural or religious preferences, helping you choose an organization that aligns with your specific needs and values.',
      category: 'NGO Services and Specializations',
    ),
    FAQItem(
      question: 'How can NGOs collaborate with the Mehfooz Aashiyanna app?',
      answer:
          'NGOs interested in collaborating with the app can reach out to us through the "Partner with Us" section of the app or by email.',
      category: 'Collaboration and Support for NGOs',
    ),
    FAQItem(
      question:
          'Can NGOs listed on the app receive donations or support from users?',
      answer:
          'Yes, the app provides a platform for users to make donations and support the work of the affiliated NGOs. You can find more information on how to donate in the app.',
      category: 'Collaboration and Support for NGOs',
    ),
    FAQItem(
      question:
          'How does Mehfooz Aashiyanna ensure the ongoing quality of services provided by the NGOs?',
      answer:
          'Mehfooz Aashiyanna regularly monitors and evaluates the services provided by the affiliated NGOs to ensure quality and adherence to established standards.',
      category: 'Collaboration and Support for NGOs',
    ),
    FAQItem(
      question:
          'Can NGOs on the app provide information about their ongoing projects and initiatives?',
      answer:
          'Yes, NGOs can showcase their ongoing projects and initiatives through the app, allowing users to learn about their work and impact.',
      category: 'Collaboration and Support for NGOs',
    ),
    FAQItem(
      question:
          'How can I provide feedback or suggestions for improving the apps support for NGOs?',
      answer:
          'We welcome feedback and suggestions from users and NGOs. You can share your thoughts and ideas through the apps feedback feature or by contacting our support team.',
      category: 'Collaboration and Support for NGOs',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final filteredFAQs = faqs.where((faq) => faq.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: filteredFAQs.length,
        itemBuilder: (context, index) {
          return FAQItemCard(filteredFAQs[index]); // Use filteredFAQs
        },
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;
  final String category;

  FAQItem(
      {required this.question, required this.answer, required this.category});
}
