import 'package:deliveryapp/dio/dio.dart';
import 'package:deliveryapp/page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/page/home_page.dart';
import 'package:dio/dio.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static String tag = 'login-page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late Dio dio;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //add NAME elemente
  // TextEditingController nameController = TextEditingController();

  @override
  void initState()
  {
    super.initState();
    dio = Client().init();
  }

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

  final email = TextFormField(
    controller: emailController,
    keyboardType: TextInputType.emailAddress,
    autofocus: true,
    decoration: InputDecoration(
      hintText: 'Email',
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
    ),
  );

  final password = TextFormField(
    controller: passwordController,
    autofocus: false,
    obscureText: true,
    decoration: InputDecoration(
      hintText: 'password',
      contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      border: OutlineInputBorder(borderRadius:  BorderRadius.circular(32.0)),
    ),
  );

  final loginButton = Padding(
    padding: const EdgeInsets.symmetric(vertical:  16.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        padding: const EdgeInsets.all(15),
        backgroundColor: Colors.orange,
      ),
      
      onPressed: () async {
        try {
          final EMAIL = emailController.text;
          final PASSWORD = passwordController.text;
          //login request
          final response = await dio.post('/user_table/user_login',
          data:{
            'EMAIL': EMAIL,
            'PASSWORD': PASSWORD,
          });

          if(response.statusCode == 200) {    //amend
            Navigator.of(context).pushNamed(HomePage.tag);
          } else {
            print('retry'); //print
          }
        } catch (error) {
          print('Error during login: $error'); //print
        }
      },
      child: const Text('Log In', style: TextStyle(color: Colors.white)),
    ),
    );

    final signupButton = Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            padding: const EdgeInsets.all(15),
            backgroundColor: Colors.orange,
            //fixedSize: const Size(50, 50),
          ),
      onPressed: () {
        Navigator.of(context).pushNamed(SignupPage.tag);
        },
        child: const Text('SignUp', style: TextStyle(color: Colors.white)),
      ),
      );

    final forgotLabel = TextButton(
      child: const Text(
        'Forgot password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            const SizedBox(height: 48.0),
            email,
            const SizedBox(height: 8.0),
            password,
            const SizedBox(height: 24.0),
            loginButton,
            const SizedBox(height: 1.0),
            signupButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}