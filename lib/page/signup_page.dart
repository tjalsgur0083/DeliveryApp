import 'package:deliveryapp/page/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
  static String tag = 'Signup-page';

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {

  final logo = Hero(  //swipe 효과
    tag: 'puni',
    child: CircleAvatar(
      backgroundColor: Colors.orangeAccent,
      radius: 48.0,
      child: Image.asset('assets/logo.png'),
    ),
  );

  final userEmail = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: true,
    decoration: InputDecoration(
      hintText: 'Email',
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );   

 final userName = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: true,
    decoration: InputDecoration(
      hintText: 'Name',
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  ); 

 final userPhoneNumber = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: true,
    decoration: InputDecoration(
      hintText: 'Phone number',
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  ); 

  final userPassWord = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: true,
    decoration: InputDecoration(
      hintText: 'Pass word',
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

    final applyButton = Padding(
    padding: const EdgeInsets.symmetric(vertical:  16.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.all(15),
        backgroundColor: Colors.orange,
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(LoginPage.tag);
      },
      child: const Text('Log In', style: TextStyle(color: Colors.white)),
    ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left:  24.0, right: 24.0),
          children: <Widget>[
            logo,
            const SizedBox(height: 100,),
            userName,
            const SizedBox(height: 40.0),
            userPhoneNumber,
            const SizedBox(height: 40.0),
            userEmail,
            const SizedBox(height: 40.0),
            userPassWord,
            const SizedBox(height: 80),
            applyButton,
          ],
        ),
      ),
    );
  }
}