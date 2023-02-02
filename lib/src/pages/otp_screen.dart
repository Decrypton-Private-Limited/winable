import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../../ai_util.dart';
import '../../routes.dart';

class OTPValidationScreen extends StatefulWidget {
  const OTPValidationScreen({Key? key}) : super(key: key);

  @override
  State<OTPValidationScreen> createState() => _OTPValidationScreenState();
}

class _OTPValidationScreenState extends State<OTPValidationScreen> {

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: ()=>Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff1e232c),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Verify OTP',
          style: SafeGoogleFont(
            'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.3,
            letterSpacing: -0.2,
            color: Color(0xff1e232c),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50,),
          Container(
            // width: 350,
            margin: EdgeInsets.symmetric(horizontal: 25),
            alignment: Alignment.center,
            child: Text('Enter OTP',
              style: SafeGoogleFont(
                'Urbanist',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: Color(0xff8390a1),
              ),
            ),
          ),
          const SizedBox(height: 4,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: IntrinsicWidth(
              child: TextField(
                  controller: controller,
                  style: TextStyle(
                    backgroundColor: Color(0xff3bd3de),
                    color: Color(0xff000088),
                    letterSpacing: 30,
                    fontSize: 24,
                  ),
                cursorColor: Colors.transparent,
                maxLength: 4,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  counterText: "",
                  filled: true,
                  hintText: "0000",
                  fillColor: Color(0xff3bd3de),
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  border: OutlineInputBorder(borderSide: BorderSide.none,),

                ),

                  ),
            ),
          ),
          const SizedBox(height: 4,),
          Container(
            // signintabMnz (7:37)
            width: 300,
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            decoration: BoxDecoration(
              color: Color(0xff13548a),
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onTap:()=>Navigator.of(context).pushNamed(AppRoutes.country),
              child: Center(
                child: Text(
                  'Verify Code',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
