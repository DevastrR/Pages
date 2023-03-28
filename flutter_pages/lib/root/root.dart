import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/home/home.dart';
import 'package:flutter_pages/screens/login/login.dart';
import 'package:flutter_pages/screens/signup/signup.dart';

enum AuthStatus {
  notLoggedIn,
  loggedIn,
}

class OurRoot extends StatefulWidget {
  const OurRoot({super.key});
  @override
  //_OurRootState createState() => _OurRootState();

  State<OurRoot> createState() {
    return _OurRootState();
  }
}

class _OurRootState extends State<OurRoot> {
  final AuthStatus _authStatus = AuthStatus.notLoggedIn;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();

    //get the state, check current User, set AuthStatus based on state
  }

  @override
  Widget build(BuildContext context) {
    Widget retVal;
    switch (_authStatus) {
      case AuthStatus.notLoggedIn:
        retVal = const OurLogin();
        break;
      case AuthStatus.loggedIn:
        retVal = const HomeScreen();
        break;
      default:
        retVal = const OurSignup();
        break;
    }
    return retVal;
  }
}
