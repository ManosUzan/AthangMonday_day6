import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:monday_day6/widgets/loginform.dart';

class movielogin extends StatefulWidget {
  const movielogin({super.key});

  @override
  State<movielogin> createState() => _movieloginState();
}

class _movieloginState extends State<movielogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
    image: DecorationImage(
      image: NetworkImage('https://cdn.pixabay.com/photo/2024/04/08/19/54/coffee-8684315_1280.jpg'), // Replace with your image path
      fit: BoxFit.cover, // Adjust how the image fits within the container (optional)
    ),
  ),
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 36),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      children: [
                        Text('Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.bold)),
                        
                      ],
                    ),
                  ),
                  
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 4,
                              blurStyle: BlurStyle.normal),
                              
                              
                        ]),
                    child: loginform(),
                  )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
