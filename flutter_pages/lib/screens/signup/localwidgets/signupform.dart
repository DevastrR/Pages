import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pages/utils/auth.dart';
import '../../../widgets/our_container.dart';

class OurSignupForm extends StatefulWidget {
  const OurSignupForm({super.key});

  @override
  State<OurSignupForm> createState() => _OurSignupFormState();
}

class _OurSignupFormState extends State<OurSignupForm> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  String? errorMessage = '';
  bool isLogin = true;

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  // Widget _entryField(
  //   String title,
  //   TextEditingController controller,
  // ) {
  //   return TextField(
  //     controller: controller,
  //     decoration: InputDecoration(labelText: title),
  //   );
  // }

  Widget _errorMessage() {
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Text(
          isLogin ? 'Login' : 'Register',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }

  Widget _loginOrRegister() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? 'Register' : 'Login'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OurContainer(
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Theme.of(context).secondaryHeaderColor,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField(
            controller: fullNameController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: "Your Name",
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: emailController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.email),
              hintText: "Email",
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock_open),
              hintText: "Create Password",
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: confirmPasswordController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock_outline),
              hintText: "Confirm Password",
            ),
            obscureText: true,
          ),
          _errorMessage(),
          const SizedBox(
            height: 20.0,
          ),
          // ElevatedButton(
          //   child: const Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 100),
          //     child: Text(
          //       "Sign Up",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold,
          //         fontSize: 20.0,
          //       ),
          //     ),
          //   ),
          //   onPressed: () {
          //     Navigator.of(context).push(MaterialPageRoute(
          //       builder: (context) => HomeScreen(),
          //     ));
          //   },
          // ),
          _submitButton(),
          _loginOrRegister(),
        ],
      ),
    );
  }
}
