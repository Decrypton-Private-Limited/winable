import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:winable/src/components/text_fields/primary_text_field.dart';
import '../../ai_util.dart';
import '../../routes.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff1e232c),
            )),
        title: Text(
          "Forgot Password?",
          style: SafeGoogleFont(
            'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.3,
            letterSpacing: -0.2,
            color: Color(0xff1e232c),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          width: 310,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                child: Text(
                  'Please enter the email address linked with your account.',
                  style: SafeGoogleFont(
                    'Urbanist',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.5,
                    color: Color(0xff8390a1),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              PrimaryTextField(
                controller: controller,
                hintText: 'Enter Your Email',
                backgroundColor: const Color(0xff3bd3de),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () => Navigator.of(context).pushNamed(AppRoutes.country),
                child: Container(
                  width: 270,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      'Send Code',
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
        ),
      ),
    );
  }
}
