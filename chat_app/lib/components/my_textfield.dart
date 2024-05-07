import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureValue;
  final FocusNode? focusNode;
  const MyTextField({super.key,required this.hintText,required this.controller,required this.obscureValue,this.focusNode});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        focusNode: focusNode,
        controller: controller,
        obscureText: obscureValue,
        decoration: InputDecoration(
            enabledBorder:  OutlineInputBorder(
                borderSide:  BorderSide(color: Theme.of(context).colorScheme.tertiary)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
            ),
            fillColor: Theme.of(context).colorScheme.secondary,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color:Theme.of(context).colorScheme.primary)
        ),
      ),
    );
  }
}
