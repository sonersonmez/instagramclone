import 'package:flutter/material.dart';
import 'package:instagram_clone/constants.dart';

import 'main_screen.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignScreenBody(context),
    );
  }

//SIGN UP PAGE WIDGETS
  Padding SignScreenBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Instagram Clone",
            style: fontSize24,
          ),
          SizedBox(
            height: 100,
          ),
          SignPageEmailTextFormField(),
          SizedBox(
            height: 10,
          ),
          SignPagePasswordTextFormField(),
          SizedBox(
            height: 10,
          ),
          SignPageLoginButton(context),
          SignPageSignUpButton()
        ],
      ),
    );
  }

//SIGN UP PAGE SIGN UP BUTTON WIDGET
  MaterialButton SignPageSignUpButton() {
    return MaterialButton(
      onPressed: () {},
      color: Colors.blue,
      child: Text("Dont you have account yet? Sign Up.", style: TextStyle(color: kColorWhite),),
    );
  }

//SIGN UP PAGE LOGIN BUTTON WIDGET
  MaterialButton SignPageLoginButton(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainScreen()));
      },
      child: Text(
        "Log In",
        style: TextStyle(color: kColorWhite),
      ),
      color: Colors.blue,
    );
  }

//SIGN PAGE PASSWORD TEXTFORMFIELD WIDGET
  TextFormField SignPagePasswordTextFormField() {
    return TextFormField(
      controller: _passwordController,
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        prefixIcon: Icon(
          Icons.mail,
          color: kColorBlack,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal, width: 0.5),
          borderRadius: BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kColorBlack, width: 0.5),
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }

//SIGN PAGE EMAIL TEXTFORMFIELD WIDGET
  TextFormField SignPageEmailTextFormField() {
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        hintText: "E-mail",
        hintStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        prefixIcon: Icon(
          Icons.mail,
          color: kColorBlack,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.teal, width: 0.5),
          borderRadius: BorderRadius.circular(25.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: kColorBlack, width: 0.5),
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
