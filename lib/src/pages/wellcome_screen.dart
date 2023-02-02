import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes.dart';
import '../components/responcive.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Widget primaryButton({
    required String image,
    required String text,
    required void Function() onTab,
    Color backgroundColor = Colors.green,
    Color color = Colors.white,
    Color? textColor,
    Color? iconColor,
  }) {
    textColor = textColor ?? color;
    iconColor = iconColor ?? color;
    return InkWell(
      onTap: onTab,
      child: SizedBox(
        width: 300,
        child: Card(
          color: backgroundColor,
          elevation: 8,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          // padding: const EdgeInsets.all(10),
          // width: 300,
          // margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          // decoration: BoxDecoration(
          //   color: backgroundColor,
          //   borderRadius: const BorderRadius.all(Radius.circular(50)),
          // ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  image,
                  width: 20,
                  height: 20,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  text,
                  style: TextStyle(color: textColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget webContainer(Widget child) => Scaffold(
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(color: Colors.black),
            ),
            child,
          ],
        ),
      );

  var fem = 1.0;

  @override
  Widget build(BuildContext context) {
    return Responsive(
      content: Stack(
        children: [

          Container(

          ),

          Scaffold(
            // backgroundColor: Colors.transparent,
            bottomNavigationBar: Container(
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  primaryButton(
                    image: "assets/img/facebook.png",
                    text: "facebook",
                    backgroundColor: const Color(0xff3F67B2),
                    color: Colors.white,
                    onTab: () {
                      //TODO(facebook implementation)
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  primaryButton(
                    image: "assets/img/google.png",
                    text: "google",
                    backgroundColor: Colors.white,
                    color: Colors.black,
                    onTab: () {
                      //TODO(google implementation)
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: const Text(
                      'Terms of service Privacy Policy',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            body: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 120,
                      height: 120,
                      child: Image.asset("assets/img/logo.png")),
                  Text(
                    'LET’S PLAY',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poly().copyWith(
                        fontSize: 28, color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'INDIA’S BIGGEST SPORTS GAME',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poly().copyWith(
                        fontSize: 14, color: Theme.of(context).primaryColor),
                  ),
                  SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset("assets/img/logo.png")),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(AppRoutes.login);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(AppRoutes.register);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.secondary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // body: Center(
            //   child: Column(
            //     children: [
            //       Image.asset("assets/img/logo.png",width: 100,),
            //       Text("LET’S PLAY",
            //         style: GoogleFonts.poly().copyWith(
            //           fontSize: 28,
            //           color: Theme.of(context).primaryColor
            //         ),
            //       ),
            //       Text("INDIA’S BIGGEST SPORTS GAME",
            //         style: GoogleFonts.poly().copyWith(
            //             fontSize: 14,
            //             color: Theme.of(context).primaryColor
            //         ),
            //       ),
            //       Image.asset("assets/img/logo.png",width: 200,),
            //       Flexible(
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.of(context).pushNamed(AppRoutes.register);
            //                 },
            //                 child: Container(
            //                     padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
            //                     decoration: BoxDecoration(
            //                       color: Theme.of(context).colorScheme.secondary,
            //                       borderRadius: BorderRadius.all(Radius.circular(3)),
            //                     ),
            //                     child: Text("Sign Up",style: TextStyle(color: Theme.of(context).primaryColor),)
            //                 ),
            //               ),
            //               InkWell(
            //                 onTap: (){
            //                   Navigator.of(context).pushNamed(AppRoutes.login);
            //                 },
            //                 child: Container(
            //                   padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
            //                   decoration: BoxDecoration(
            //                     color: Theme.of(context).colorScheme.secondary,
            //                     borderRadius: BorderRadius.all(Radius.circular(3)),
            //                   ),
            //                   child: Text("Sign In",style: TextStyle(color: Theme.of(context).primaryColor),)
            //                 ),
            //               )
            //             ],
            //       )),
            //
            //       primaryButton(
            //         image:"assets/img/facebook.png",
            //         text: "facebook",
            //         backgroundColor: const Color(0xff3F67B2),
            //         color: Colors.white,
            //         onTab:(){
            //           //TODO(facebook implementation)
            //           },
            //       ),
            //       primaryButton(
            //         image:"assets/img/google.png",
            //         text: "google",
            //         backgroundColor: Colors.white,
            //         color: Colors.black,
            //         onTab:(){
            //           //TODO(google implementation)
            //           },
            //       ),
            //
            //
            //     ],
            //   ),
            // ),
          )
        ],
      ),
    );
  }
}
