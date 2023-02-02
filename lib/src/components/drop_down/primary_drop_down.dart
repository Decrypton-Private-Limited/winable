
import 'package:flutter/material.dart';

import '../../../ai_util.dart';

class PrimaryDropDown<T> extends StatefulWidget {
  final double width;
  Decoration? decoration;
  final Color backgroundColor;
  final Color textHintColor;
  final Color textColor;
  final double fontSize;

  final BorderRadius borderRadius;
  final String hintText;
  Widget? hint;
  List<T> list;
  Widget Function<T>(T)? dropDownItem;
  final Null Function(dynamic) onChanged;
  final T? value;
  TextStyle? hintStyle;


  PrimaryDropDown({
    Key? key,
    required this.list,
    required this.onChanged,
    required this.hintText,
    this.value,
    this.width=280,
    this.decoration,
    this.backgroundColor = const Color(0xff3bd3de),
    this.textHintColor = const Color(0xff29298a),
    this.textColor = const Color(0xff000088),
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.hint,
    this.dropDownItem ,
    this.hintStyle,
    this.fontSize = 16,
  }) : super(key: key){
    hintStyle = SafeGoogleFont(
      'Poppins',
      fontSize: fontSize,
      fontWeight: FontWeight.w300,
      height: 1.5 ,
      color: textColor,
    );
    dropDownItem ??= <T>(T item)=>Text(item.toString());
    decoration ??= BoxDecoration(color: backgroundColor, borderRadius: borderRadius);
    hint ??= Container(width: width-30,padding:const EdgeInsets.symmetric(horizontal: 8,vertical: 8),child: Text(hintText));

  }

  @override
  State<PrimaryDropDown> createState() => _PrimaryDropDownState();
}

class _PrimaryDropDownState<T> extends State<PrimaryDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: widget.decoration,
      child: DropdownButton<T>(
        hint: widget.hint,
        underline: Container(),
        items: widget.list.map((e) => DropdownMenuItem<T>(value: e, child: widget.dropDownItem!(e))).toList(),
        onChanged: widget.onChanged,
      ),
    );
  }
}

