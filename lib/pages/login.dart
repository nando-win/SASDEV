import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sasdev/pages/house_rules.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Map<String, dynamic>? data;
  bool confirmed = false;

  void checkUser() {
    setState(() {
      data = {
        'username': usernameController.text,
        'password': passwordController.text
      };
    });

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => House_Rules(data!)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 100, left: 20, right: 20),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/icons/searchandstay.png')),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(251, 59, 17, 5)),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(251, 59, 17, 5)),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                  controller: passwordController,
                ),
              ),
              Divider(
                height: 25.0,
              ),
              ElevatedButton(
                onPressed: () {
                  checkUser();
                },
                child: Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
