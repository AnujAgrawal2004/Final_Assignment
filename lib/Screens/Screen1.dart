// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: (Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60, bottom: 60),
                child: Text(
                  "TRAINING",
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 40),
                child: Image(
                    height: 300,
                    width: 500,
                    image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThezfYeTcTGMwT9Dyf3fnXUN6pfCS7wVDRmA&usqp=CAU',
                    )),
              ),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen2();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.purple, shape: StadiumBorder()),
                    child: Text("Get Started")),
              )
            ],
          ),
        ),
      )),
    );
  }
}
