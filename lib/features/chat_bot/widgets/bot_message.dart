import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class RecivedMessage extends StatelessWidget {
  RecivedMessage({super.key});
  final List<String> messages = [
    'Rent a house',
    'Buy a house',
    'Sell a house',
    'Contact us',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Image(
              image: AssetImage('lib/assets/images/chatbot.png'), height: 40),
          const SizedBox(width: 5),
          Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(10),
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 1.5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Text('👋 Hello, how can help you?',
                      style: AppFonts.style14w600)),
              const SizedBox(height: 5),
              Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey[300]!)),
                            child: Center(
                                child: Text(messages[index],
                                    style: AppFonts.style14w600)),
                          ),
                        );
                      }))
            ],
          ),
        ],
      ),
    );
  }
}
