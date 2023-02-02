import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../ai_util.dart';
import '../../routes.dart';
import '../components/drop_down/primary_drop_down.dart';
import '../components/text_fields/primary_text_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController controller = TextEditingController(text:"");

  List<String> list = ["Telangana","Andra Pradesh","TamilNadu","Delhi"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: InkWell(
            onTap: ()=>Navigator.of(context).pop(),
            child: const Icon(Icons.arrow_back_ios_new,color: Color(0xff1e232c),)),

        title: Text("Hello! Register to get Started",
          style: SafeGoogleFont (
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryTextField(
                  controller: controller,
                  hintText: 'User Name',
                  backgroundColor: const Color(0xff3bd3de),
                ),
                const SizedBox(height: 10,),
                PrimaryTextField(
                  controller: controller,
                  hintText: 'Email',
                  backgroundColor: const Color(0xff3bd3de),
                ),
                const SizedBox(height: 10,),
                PrimaryTextField(
                  controller: controller,
                  hintText: 'Date of Birth',
                  backgroundColor: const Color(0xff3bd3de),
                  icon: Icon(Icons.calendar_month,color: Theme.of(context).colorScheme.onPrimary,),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate:DateTime(2023),
                        lastDate: DateTime(2101)
                    );
                    if(pickedDate != null ){
                      String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                      setState(() {
                        controller.text = formattedDate;
                      });
                    }
                  },
                ),
                const SizedBox(height: 10,),
                PrimaryDropDown<String>(
                  list: list,
                  onChanged: (v){},
                  hintText: "State",
                ),
                const SizedBox(height: 10,),
                PrimaryTextField(
                  controller: controller,
                  hintText: 'City',
                  backgroundColor: const Color(0xff3bd3de),
                ),
                const SizedBox(height: 10,),
                PrimaryTextField(
                  controller: controller,
                  hintText: 'Mobile Number',
                  backgroundColor: const Color(0xff3bd3de),
                ),
                const SizedBox(height: 10,),
                PrimaryTextField(
                  controller: controller,
                  hintText: 'Password',
                  backgroundColor: const Color(0xff3bd3de),
                ),
                const SizedBox(height: 10,),
                PrimaryTextField(
                  controller: controller,
                  hintText: 'Conform Password',
                  backgroundColor: const Color(0xff3bd3de),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: ()=>Navigator.of(context).pushNamed(AppRoutes.otpVerification),
                  child: Container(
                    width: 270,
                    height: 32,
                    decoration: BoxDecoration (
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: SafeGoogleFont (
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

            Container(
              alignment: Alignment.bottomCenter,
              // margin: const EdgeInsets.only(bottom: 10),
              child: InkWell(
                onTap:()=>Navigator.of(context).pushReplacementNamed(AppRoutes.login),
                child: Text(
                  'Already Have An Account Sign In',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Poppins',
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                    height: 1.5,
                    color: Color(0xff13548a),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
