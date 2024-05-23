import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate/core/theme/fonts.dart';
import 'package:real_estate/features/chat_bot/widgets/bot_message.dart';
import 'package:real_estate/features/chat_bot/widgets/send_message.dart';
import 'package:real_estate/features/chat_bot/widgets/sender_message.dart';
import 'package:real_estate/features/chat_bot/widgets/start_chat.dart';

class ChatBot extends StatelessWidget {
  const ChatBot({super.key});
  final bool start = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Image(
                image: AssetImage('lib/assets/images/chatbot.png'),
                height: 30,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Chat Bot',
                      style:
                          AppFonts.style18BColor.copyWith(color: Colors.black)),
                  Text('Online',
                      style: AppFonts.style18BColor.copyWith(fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
        body: start
            ? Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return RecivedMessage();
                      },
                      itemCount: 1,
                    ),
                  ),
                  const SendMessage()
                ],
              )
            : StartChat());
  }
}
