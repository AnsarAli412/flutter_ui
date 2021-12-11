import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          headerImage()
        ],
      )
    );
  }

  Image headerImage(){
    return Image.asset('assets/images/login_img.png');
  }
}
