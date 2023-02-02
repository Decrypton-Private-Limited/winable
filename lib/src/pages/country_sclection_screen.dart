import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:winable/routes.dart';
import '../../ai_util.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {

  TextEditingController controller = TextEditingController(text:"");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(onTap:()=>Navigator.of(context).pop(),child: const Icon(Icons.arrow_back_ios_new,color: Color(0xff1e232c),)),
        backgroundColor: Colors.transparent,
        elevation: 0,

        bottom:PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search_rounded),
                  border: UnderlineInputBorder(),
                  hintText: "search"
              ),

            ),
          ),
        ),

        title: Text(
          'Select Your Country ',
          style: SafeGoogleFont (
            'Urbanist',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 1.3,
            letterSpacing: -0.2,
            color: Color(0xff1e232c),
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(itemBuilder: (context,pos){
          return InkWell(
            onTap: ()=>Navigator.of(context).pushReplacementNamed(AppRoutes.home),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Row(
                children: [
                  Image.network(
                    "https://uxwing.com/wp-content/themes/uxwing/download/flags-landmarks/india-flag-icon.png",
                    width: 100,
                    height: 50,
                  ),
                  Text("India",style: TextStyle(
                    fontSize: 20
                  ),)
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
