import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(10),
        child: Row(children: [
          Expanded(
              child: SizedBox(
            height: 50,
            child: TextFormField(
                cursorColor: AppColors.primaryColor,
                style: AppFonts.style16black,
                keyboardType: TextInputType.multiline,
                autocorrect: true,
                maxLines: null,
                decoration: InputDecoration(
                  filled: true,
                  contentPadding: EdgeInsets.all(10),
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  hintText: 'Type a message',
                  hintStyle: AppFonts.style15g500,
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                )),
          )),
          const SizedBox(width: 10),
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Icon(
                Icons.send,
                color: Colors.white,
              ))
        ]));
  }
}
