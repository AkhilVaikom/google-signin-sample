import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: Image.network("https://i.pinimg.com/originals/18/99/07/1899072ff62e9455aed4c53be5fe9654.png").image,
              radius: 100,
            ),
            Text("Akhil Vaikom"),
            Text("akhilvkm@gmail.com")
          ],
        ),
      ),
    ),);
  }
}