// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'faq_item_card.dart';

class FAQList extends StatelessWidget {
  final String category;

  FAQList({required this.category});

  final List<FAQItem> faqs = [
    FAQItem(
      question: 'How can I cope with the emotional trauma of domestic violence or harassment?',
      answer:
          'Coping with trauma involves seeking professional help, reaching out to support networks, and practicing self-care. A psychiatrist can provide strategies and therapy.',
      category: 'Coping with Trauma',
    ),
     FAQItem(
      question: 'Are there specific therapies or counseling options to address trauma-related issues?',
      answer:
          'Yes, therapies like Cognitive-Behavioral Therapy (CBT), Eye Movement Desensitization and Reprocessing (EMDR), and support groups can be effective in addressing trauma-related issues.',
      category: 'Coping with Trauma',
    ),
     FAQItem(
      question: 'What are some self-help techniques to manage anxiety and stress after trauma?',
      answer:
          'Self-help techniques like deep breathing, mindfulness, and journaling can help manage anxiety and stress. A psychiatrist can provide guidance on these methods.',
      category: 'Coping with Trauma',
    ),
     FAQItem(
      question: 'How can I rebuild self-esteem and self-worth after experiencing abuse or harassment?',
      answer:
          'Rebuilding self-esteem involves self-compassion, therapy, and reframing negative self-beliefs. A psychiatrist can assist in this process.',
      category: 'Coping with Trauma',
    ),
     FAQItem(
      question: 'Can a psychiatrist help me understand the long-term effects of trauma and how to address them?',
      answer:
          'Yes, a psychiatrist can help you understand the long-term effects of trauma and work with you to develop strategies for addressing them.',
      category: 'Coping with Trauma',
    ),
    FAQItem(
      question: 'How can I manage anxiety and depression resulting from domestic violence or harassment?',
      answer:
          'Managing anxiety and depression often requires a combination of therapy, medication, and support. Consult with a psychiatrist to determine the right approach.',
      category: 'Managing Anxiety and Depression',
    ),
    FAQItem(
      question: 'Are there lifestyle changes that can help alleviate anxiety and depression symptoms?',
      answer:
          'Lifestyle changes like regular exercise, a balanced diet, and sufficient sleep can complement treatment for anxiety and depression. A psychiatrist can provide recommendations.',
      category: 'Managing Anxiety and Depression',
    ),
    FAQItem(
      question: 'What is the role of medication in managing anxiety and depression?',
      answer:
          'Medication may be prescribed by a psychiatrist to alleviate symptoms of anxiety and depression. It should be used in conjunction with therapy and under professional guidance.',
      category: 'Managing Anxiety and Depression',
    ),
    FAQItem(
      question: 'Can therapy, such as Cognitive-Behavioral Therapy (CBT), help with managing these conditions?',
      answer:
          'Answer 4: Yes, CBT and other evidence-based therapies can be highly effective in managing anxiety and depression. A psychiatrist can recommend the most suitable approach.',
      category: 'Managing Anxiety and Depression',
    ),
    FAQItem(
      question: 'How can I build a support system to help me through the challenges of anxiety and depression?',
      answer:
          'Building a support system involves connecting with friends, family, and support groups. A psychiatrist can assist in developing a comprehensive support network.',
      category: 'Managing Anxiety and Depression',
    ),
    FAQItem(
      question: 'What are some self-care practices to maintain emotional well-being after experiencing abuse or harassment?',
      answer:
          'Self-care practices include mindfulness, meditation, exercise, and engaging in hobbies. A psychiatrist can help you tailor a self-care routine.',
      category: 'Self-Care and Emotional Well-being',
    ),
    FAQItem(
      question: 'How can I practice self-compassion and self-forgiveness on my healing journey?',
      answer:
          'Self-compassion and self-forgiveness are vital for emotional healing. A psychiatrist can provide guidance on cultivating these qualities.',
      category: 'Self-Care and Emotional Well-being',
    ),
    FAQItem(
      question: 'Can a psychiatrist help me identify and manage triggers that worsen my emotional well-being?',
      answer:
          'Yes, a psychiatrist can work with you to identify triggers and develop strategies to manage them effectively.',
      category: 'Self-Care and Emotional Well-being',
    ),
    FAQItem(
      question: 'What role does gratitude and positivity play in maintaining emotional well-being?',
      answer:
          'Gratitude and positivity can boost emotional well-being. A psychiatrist can guide you in cultivating these traits',
      category: 'Self-Care and Emotional Well-being',
    ),
    FAQItem(
      question: 'How can I set and achieve emotional well-being goals with the help of a psychiatrist?',
      answer:
          'A psychiatrist can assist in setting realistic goals for emotional well-being and provide support and guidance to achieve them.',
      category: 'Self-Care and Emotional Well-being',
    ),
    FAQItem(
      question: 'How can I rebuild trust in relationships after experiencing domestic violence or harassment?',
      answer:
          'Rebuilding trust requires communication, setting boundaries, and therapy. A psychiatrist can provide guidance on this journey.',
      category: 'Building Healthy Relationships',
    ),
     FAQItem(
      question: 'What are the signs of a healthy relationship, and how can I identify and cultivate one?',
      answer:
          'A psychiatrist can help you identify the signs of a healthy relationship and provide guidance on cultivating one based on mutual respect and communication.',
      category: 'Building Healthy Relationships',
    ),
     FAQItem(
      question: 'How can I communicate my needs and boundaries effectively in relationships?',
      answer:
          'Effective communication involves assertiveness and setting clear boundaries. A psychiatrist can assist in developing these skills.',
      category: 'Building Healthy Relationships',
    ),
     FAQItem(
      question: 'Are there strategies to address codependent or unhealthy relationship patterns?',
      answer:
          'Yes, strategies include therapy and self-awareness. A psychiatrist can help you address codependent or unhealthy patterns.',
      category: 'Building Healthy Relationships',
    ),
     FAQItem(
      question: 'How can I ensure that my future relationships are free from abuse or harassment?',
      answer:
          'A psychiatrist can help you develop healthy relationship standards and recognize red flags to ensure future relationships are safe and supportive.',
      category: 'Building Healthy Relationships',
    ),
     FAQItem(
      question: 'How can I support my children and family through the aftermath of domestic violence or harassment?',
      answer:
          'Supporting your family involves open communication, therapy, and seeking professional guidance. A psychiatrist can help in this process.',
      category: 'Parenting and Family Support',
    ),
    FAQItem(
      question: 'What are the signs of trauma in children, and how can I help them heal?',
      answer:
          'Signs of trauma in children may include behavioral changes. A psychiatrist can guide you on supporting and helping your children heal.',
      category: 'Parenting and Family Support',
    ),
    FAQItem(
      question: 'How can I maintain a healthy family environment and ensure safety for my loved ones?',
      answer:
          'A psychiatrist can provide guidance on maintaining a healthy family environment and ensuring safety through boundaries and communication.',
      category: 'Parenting and Family Support',
    ),
    FAQItem(
      question: 'Are there support groups or resources available for families affected by domestic violence or harassment?',
      answer:
          'Yes, many support groups and resources are available, and a psychiatrist can help you connect with them.',
      category: 'Parenting and Family Support',
    ),
    FAQItem(
      question: 'What role does self-care play in being a supportive parent and family member?',
      answer:
          'Self-care is essential for being a supportive parent and family member. A psychiatrist can assist you in balancing self-care with family support.',
      category: 'Parenting and Family Support',
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
