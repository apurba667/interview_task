import 'package:flutter/material.dart';


class QuickTechCustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String title;
  final String? hintText;
  final bool? isPass;
  final bool? isButton;
  final int? maxLine;
  final Widget ? suffixIcon;
  final TextInputType? keyboardType;
  const QuickTechCustomTextField({super.key,  this.controller, this.isPass, this.maxLine, required this.title, this.hintText, this.isButton, this.suffixIcon, this.keyboardType});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: isButton == null? true :isButton == true?false:true,
      obscureText: isPass == true? true: false,
      controller: controller,

      maxLines: maxLine??1,
      style: const TextStyle(fontSize: 18),
      keyboardType: keyboardType?? TextInputType.text,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,

          hintText: hintText??'',
          fillColor: Colors.black,
          hintStyle: const TextStyle(fontSize: 18),
          contentPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          enabledBorder:  OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.3)),
          ),
          border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,width: 1)),
          focusedBorder:  const OutlineInputBorder( borderSide: BorderSide(color: Colors.deepOrange, width: 1.0),),
          labelText: title,
          labelStyle: const TextStyle(fontSize: 18)
      ),
    );
  }
}
