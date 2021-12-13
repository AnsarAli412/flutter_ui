import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

    String name = "";
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: headerImage(),
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            loginForm(name),
            SizedBox(
              height: 100,
            ),
            loginButton(),
            Spacer(
              flex: 1,
            ),
            registerNow()
          ],
        ));
  }

  Image headerImage() {
    return Image.asset(
      'assets/images/login_top.png',
      fit: BoxFit.cover,
    );
  }

  Form loginForm(String name) {
    return Form(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: TextFormField(
            onChanged: (value){
              name = value;
              setState(() {});
            },
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone_android),
              hintText: "Enter mobile number.",
              label: Text("Mobile number"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: TextFormField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              hintText: "Enter password.",
              label: Text("Password"),
            ),
          ),
        )
      ],
    ));
  }

  SizedBox loginButton() {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    );
  }

  Padding registerNow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have you account?   ",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          Text(
            "Register Now",
            style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
