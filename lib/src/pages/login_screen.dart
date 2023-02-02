import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:winable/routes.dart';
import '../../ai_util.dart';
import '../components/text_fields/primary_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController controller = TextEditingController(text:"");

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
          onTap: ()=>Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios_new,color: Theme.of(context).primaryColor,),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              // color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    width: 100,
                    height: 100 ,
                    decoration: const BoxDecoration(
                      color: Color(0xffd9d9d9),
                    ),
                  ),
                  const SizedBox(height: 30,),

                  PrimaryTextField(
                    controller: controller,
                    hintText: 'Email *',
                    backgroundColor: const Color(0xff3bd3de),
                  ),


                  const SizedBox(height: 20,),
                  PrimaryTextField(
                    controller: controller,
                    hintText: 'Password *',
                    backgroundColor: const Color(0xff3bd3de),
                  ),
                  const SizedBox(height: 30,),
                  InkWell(
                    onTap: () => Navigator.of(context).pushNamed(AppRoutes.country),
                    child: Container(
                      width: 270,
                      height: 38,
                      decoration: BoxDecoration(
                        color: Color(0xff13548a),
                        borderRadius: BorderRadius.circular(30 ),
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 18,
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
          InkWell(
            onTap: (){Navigator.of(context).pushNamed(AppRoutes.register);},
            child: Container(
              width: 270,
              height: 42,
              decoration: BoxDecoration(
                color: Color(0xfff44236),
                borderRadius: BorderRadius.circular(30 ),
              ),
              child: Center(
                child: Text('Sign Up',
                  style: SafeGoogleFont(
                    'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
