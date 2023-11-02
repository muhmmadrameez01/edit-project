// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'faq_item_card.dart';

class FAQList extends StatelessWidget {
  final String category;

  FAQList({required this.category});

  final List<FAQItem> faqs = [
    FAQItem(
      question: 'What is the Mehfooz Aashiyana app?',
      answer:
          'Mehfooz Aashiyana is a mobile application designed to connect victims of harassment and domestic violence with the nearest NGOs. It also provides access to professional psychiatrists and lawyers who are registered with NGOs to offer advice and support.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question: 'How does the app work in connecting victims with NGOs?',
      answer:
          'The app uses location services to connect victims with nearby NGOs that can offer support and assistance.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question: 'Can I access professional psychiatric advice through the app?',
      answer:
          'Yes, the app provides access to professional psychiatrists who can offer guidance and support to victims.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question: 'Is legal advice available through the Mehfooz Aashiyana app?',
      answer:
          'Yes, victims can receive legal advice through the app to understand their rights and legal options.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question: 'How can I download and install the Mehfooz Aashiyana app?',
      answer:
          'The app can be downloaded from app stores. Once installed, victims can register and access its services to seek help and support.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question: 'Is the Mehfooz Aashiyana app available for free?',
      answer:
          'Yes, the app is available for free, and there are no charges for downloading or using its features.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question:
          'What services does the Mehfooz Aashiyana app provide to victims of harassment and domestic violence?',
      answer:
          'The app connects victims with nearby NGOs, offers access to professional psychiatrists and registered lawyers, and provides legal advice to support victims in difficult situations.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question:
          ' Is the Mehfooz Aashiyana app available in multiple languages?',
      answer: 'Not yet, but very soon it will available in many languages.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question:
          'What should I do in case of a legal concern related to harassment or domestic violence?',
      answer:
          'The app provides access to registered lawyers who can offer legal advice and information on your rights and legal options.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question:
          'How does the app ensure the safety and privacy of users who seek help?',
      answer:
          'The app prioritizes user safety and privacy. It uses secure connections and ensures that all information is kept confidential.',
      category: 'Mehfooz Aashiyana',
    ),
    FAQItem(
      question: 'What is domestic violence, and how can I identify it?',
      answer:
          'Domestic violence is a pattern of abusive behaviors in a family or household relationship. The app provides information on identifying signs of domestic violence.',
      category: 'Understanding Domestic Violence',
    ),
    FAQItem(
      question: 'What are the legal rights of domestic violence victims?',
      answer:
          'The app offers information on the legal rights of domestic violence victims and how they can seek legal assistance.',
      category: 'Understanding Domestic Violence',
    ),
    FAQItem(
      question:
          'How can I support someone I know who is a victim of domestic violence?',
      answer:
          'The app provides guidance on supporting victims of domestic violence and helping them seek help.',
      category: 'Understanding Domestic Violence',
    ),
    FAQItem(
      question:
          'Are there shelters or safe spaces for domestic violence victims through the app?',
      answer:
          'Yes, the app can help victims find nearby shelters or safe spaces through its NGO connections.',
      category: 'Understanding Domestic Violence',
    ),
    FAQItem(
      question: 'Can I report incidents of domestic violence through the app?',
      answer:
          'Yes, the app allows users to report incidents, which will be directed to the appropriate authorities and organizations.',
      category: 'Understanding Domestic Violence',
    ),
    FAQItem(
      question: 'What is considered harassment, and how can I recognize it?',
      answer:
          'The app provides information on different forms of harassment and how to identify them.',
      category: 'Handling Harassment',
    ),
    FAQItem(
      question: 'What are the legal options for victims of harassment?',
      answer:
          'The app offers guidance on legal options and how to seek legal support.',
      category: 'Handling Harassment',
    ),
    FAQItem(
      question: 'How can I protect myself from online harassment?',
      answer:
          'The app provides tips on protecting yourself from online harassment and reporting it.',
      category: 'Handling Harassment',
    ),
    FAQItem(
      question:
          'Can I find organizations to support harassment victims through the app?',
      answer:
          'Yes, the app connects victims with organizations that provide support for harassment victims.',
      category: 'Handling Harassment',
    ),
    FAQItem(
      question:
          'How does the app ensure the confidentiality and security of users reporting harassment?',
      answer:
          'The app takes measures to protect user information and ensures that reports are handled confidentially and securely.',
      category: 'Handling Harassment',
    ),
    FAQItem(
      question: 'What is a Medico-Legal Certificate (MLC)?',
      answer:
          'An MLC is a document issued by a qualified medical professional in cases of injuries or deaths requiring legal investigation, such as accidents or assaults.',
      category: 'Medico-Legal Certificates (MLC)',
    ),
    FAQItem(
      question: 'When is an MLC required?',
      answer:
          'MLCs are typically needed in cases of accidents, injuries, physical assaults, sexual assaults, and suspicious deaths.',
      category: 'Medico-Legal Certificates (MLC)',
    ),
    FAQItem(
      question: 'Who is authorized to issue an MLC?',
      answer:
          'MLCs are generally issued by qualified medical practitioners, such as forensic experts, doctors, or pathologists.',
      category: 'Medico-Legal Certificates (MLC)',
    ),
    FAQItem(
      question: 'What information does an MLC contain?',
      answer:
          'An MLC includes details about the injuries or medical condition, examination findings, and expert opinions relevant to the legal case.',
      category: 'Medico-Legal Certificates (MLC)',
    ),
    FAQItem(
      question: 'How can I obtain an MLC for a legal case?',
      answer:
          'To obtain an MLC, you should immediately move towards your nearest government hospital , report the incident, and cooperate with the examination process for the certificate to be issued. Remember you have only 24 hours for this process.',
      category: 'Medico-Legal Certificates (MLC)',
    ),
    // Add more FAQs with various categories
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
