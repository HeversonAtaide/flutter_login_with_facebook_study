import 'package:flutter/material.dart';
import 'package:flutter_login_with_facebook_study/app/core/themes/colors_custom.dart';
import 'package:flutter_login_with_facebook_study/app/core/utils/screen_utils.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../controller/login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

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
              ],
            ),
          )
        ],
      ),
    );
  }
}
