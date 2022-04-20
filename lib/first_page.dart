import 'package:coba_aplikasi/custom_color.dart';
import 'package:coba_aplikasi/home_page.dart';
import 'package:coba_aplikasi/text_style.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _userName = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  String? username;
  String? password;
  String alert = 'Password harus lebih dari 4 karakter';

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(8.0),
          color: darkBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  'images/savage@2x.png',
                  width: 250,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Login yuk. Masukin username dan passord dulu ya! Oh iya, pastiin username sama passwordnya mengandung angka juga yaa! Passwordnya juga harus lebih dari 4 karakter nih, kalo engga, kamu gabisa login',
                style: textContent,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: TextFormField(
                  //username haus mengandung angka dan string
                  style: subContent,
                  // controller: _userName,
                  validator: (value) {
                    if (value == null) {
                      return 'Masukin username dulu ya';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: whiteOne,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.perm_identity,
                      color: whiteOne,
                      size: 35,
                    ),
                    hintText: 'Username',
                    hintStyle: subContent,
                    labelText: 'Masukkan Username',
                    labelStyle: subContent,
                  ),
                  onChanged: (String nameValue) {
                    setState(() {
                      username = nameValue;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Flexible(
                child: TextFormField(
                  //password harus mengandung angka
                  style: subContent,
                  // controller: _password,
                  validator: (value) {
                    if (value == null) {
                      return 'Masukin username dulu ya';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: whiteOne,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.security,
                      color: whiteOne,
                      size: 35,
                    ),
                    hintText: 'Password',
                    hintStyle: subContent,
                    labelText: 'Masukkan Password',
                    labelStyle: subContent,
                  ),
                  onChanged: (String passvalue) {
                    setState(() {
                      password = passvalue;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: Card(
                  color: orange,
                  elevation: 5,
                  child: Container(
                    height: 50,
                    child: InkWell(
                      splashColor: whiteOne,
                      onTap: () {
                        return loginin(password, username);
                      },
                      child: Center(
                        child: Text(
                          'Login',
                          style: newPageColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool maPassword(password) {
    if (password.length < 4) {
      return false;
    } else {
      return true;
    }
  }

  bool namaPengguna(username) {
    if (!username.contains(RegExp(r'[0-9]'))) {
      return false;
    } else {
      return true;
    }
  }

  void loginin(password, username) {
    if (maPassword(password) && namaPengguna(username)) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return HomePage();
        }),
      );
    }
  }
}
