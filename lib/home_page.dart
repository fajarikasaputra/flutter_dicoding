import 'package:coba_aplikasi/custom_color.dart';
import 'package:coba_aplikasi/text_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: newGreen,
          width: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/hai.png',
                    width: 250,
                  ),
                  Icon(
                    Icons.linear_scale_sharp,
                    color: whiteOne,
                  ),
                  Text(
                    'Selamat Datang',
                    style: textContent,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Aplikasi ini adalah aplikasi revisi \nflutter dicoding untuk submission\n sebagai syarat penyelesaian course',
                    style: avenirFont,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
