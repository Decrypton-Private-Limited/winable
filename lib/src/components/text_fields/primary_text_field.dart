
import 'package:flutter/material.dart';

import '../../../ai_util.dart';

class PrimaryTextField extends StatefulWidget {

  TextEditingController controller ;
  TextStyle style  ;
  String hintText = "";
  Color backgroundColor = Colors.blueAccent;
  OutlineInputBorder border ;
  EdgeInsets padding ;
  InputDecoration decoration;
  Color textColor;
  Color textHintColor;
  double width;
  double fontSize;
  bool readOnly;
  Widget? icon;
  void Function()? onTap;

  PrimaryTextField({Key? key,
    required this.controller,
    this.style  = const TextStyle(),
    this.fontSize = 16,
    this.hintText = "",
    this.textColor = const Color(0xff000088),
    this.textHintColor = const Color(0xff29298a),
    this.backgroundColor =Colors.blueAccent,
    this.border = const OutlineInputBorder(borderSide: BorderSide.none,),
    this.padding = const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
    this.decoration = const InputDecoration(),
    this.width = 280,
    this.readOnly = false,
    this.icon,
    this.onTap,
  }) : super(key: key){

    style = SafeGoogleFont(
      'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w300,
      height: 1.5 ,
      color: textColor,
    );

    decoration = InputDecoration(
      counterText: "",
      filled: true,
      hintText: hintText,
      fillColor: backgroundColor,
      contentPadding: padding,
      border: border,
      hintStyle: style.copyWith(color: textHintColor),
      suffixIcon: icon,

    );
  }

  @override
  State<PrimaryTextField> createState() => _PrimaryTextFieldState();
}

class _PrimaryTextFieldState extends State<PrimaryTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: TextField(
        controller: widget.controller,
        style: widget.style,
        decoration: widget.decoration,
        onTap: widget.onTap,
        readOnly: widget.readOnly,
      ),
    );
  }
}

