import 'package:coba_aplikasi/custom_color.dart';
import 'package:coba_aplikasi/text_style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewPage(),
    );
  }
}

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  State<NewPage> createState() => _NewPageState();
}

String _name = '';

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            backgroundColor: darkBlue,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.0,
                    right: 10.0,
                  ),
                ),
                Image(
                  image: AssetImage(
                    'images/savage@2x.png',
                  ),
                  width: 300,
                ),
                Text(
                  'Hai! \n Silahkan masukkan nama kamu \n untuk login',
                  style: textContent,
                  textAlign: TextAlign.center,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Siapa nama kamu?',
                    contentPadding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    hoverColor: whiteOne,
                    icon: Icon(Icons.account_circle_outlined,
                        textDirection: TextDirection.rtl),
                  ),
                  onChanged: (String value) {
                    setState(
                      () {
                        _name = value;
                      },
                    );
                  },
                  style: subContent,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return HomePage();
                        });
                  },
                  child: Text('Login'),
                )
              ],
            )),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: SafeArea(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Image(
                    image: AssetImage(
                      'images/hai.png',
                    ),
                    width: 300,
                  ),
                  Text(
                    'Selamat Datang $_name',
                    style: textContent,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Terimakasih telah masuk \n dan mencoba aplikasi ini, \n aplikasi ini adalah aplikasi pembelajaran \n flutter awal. \n Oh iya, selamat berpuasa :)',
                    style: subContent,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
