import 'package:flutter/material.dart';
import 'package:monday_day6/screens/Moive/movielogin.dart';

class movieintro extends StatelessWidget {
  const movieintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: Text("Movie +")),
      // ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              color: Colors.black,
              height: MediaQuery.of(context).size.height,
              child: Opacity(
                opacity: 0.8,
                child: Image.network(
                  "https://cdn.pixabay.com/photo/2024/03/31/06/16/bird-8666099_1280.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Center(
              child: Column(
                children: [
                  Text(
                    "Movie",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 62),
            margin: EdgeInsets.only(bottom: 16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Gateway to Unlimited Movie Magic",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 18),
                    margin: EdgeInsets.all(16),
                    child: Text(
                      "It's particularly useful when you need to position widgets relative to the edges of a container.",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => movielogin()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
