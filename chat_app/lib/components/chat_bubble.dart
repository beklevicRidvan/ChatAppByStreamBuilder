import 'package:chat_app/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;
  const ChatBubble(
      {super.key, required this.message, required this.isCurrentUser});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode =  Provider.of<ThemeProvider>(context).isDarkMode;
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isCurrentUser ?(isDarkMode ? Colors.green.shade600 : Colors.grey.shade500) : (isDarkMode ? Colors.grey.shade800 : Colors.grey.shade200),
      ),
      child: Text(message,style: TextStyle(color: isCurrentUser ? Colors.white : (isDarkMode ? Colors.white : Colors.black)),),
    );
  }
}
