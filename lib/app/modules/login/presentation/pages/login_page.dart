import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:flutter_login_with_facebook_study/app/core/themes/colors_custom.dart';
import 'package:flutter_login_with_facebook_study/app/core/utils/screen_utils.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../controller/login_controller.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _signInFacebook() async {
    FacebookLogin facebookLogin = FacebookLogin();

    final result = await facebookLogin.logIn(['email']);
    final token = result.accessToken.token;
    final graphResponse = await http.get(
        'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=${token}');
    print(graphResponse.body);

    if (result.status == FacebookLoginStatus.loggedIn) {
      final credential = FacebookAuthProvider.credential(token);
      _auth.signInWithCredential(credential);
    }
  }

  @override
  void initState() {
    super.initState();

    controller.init(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: ScreenUtils.screenHeight,
            width: ScreenUtils.screenWidth,
            color: ColorsCustom.backgroundBlack,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter a search term',
                    hintStyle: TextStyle(color: ColorsCustom.white),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter a search term',
                    hintStyle: TextStyle(color: ColorsCustom.white),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _signInFacebook();
                  },
                  child: Container(
                    height: ScreenUtils.bottomBarHeight,
                    width: ScreenUtils.screenWidth,
                    child: Text('Login'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
