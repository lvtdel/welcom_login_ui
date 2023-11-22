import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:welcom_login/Constants.dart';

import 'home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,

        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Constants.primaryColor,
                  Constants.secondaryColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 1],
                tileMode: TileMode.clamp
            )
        ),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                  bottom: 350,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Image.asset("assets/logo.png", width: 130,),
                      const Text("WorkOut", style: TextStyle(
                        fontSize: 29,
                        color: Colors.white
                      ),)

                    ],
                  )
              ),
              Positioned(bottom: 100,
                  // left: 10,
                  // right: 10,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(child: const Home(), type: PageTransitionType.fade));
                    },
                    child: SizedBox(
                      width: size.width,
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0, 0),
                              )
                            ]
                          ),
                          child: const Center(
                            child: Text(
                              "Get started", style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                            ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
