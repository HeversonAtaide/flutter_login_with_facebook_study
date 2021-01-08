import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/utils/screen_utils.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Flutter Slidy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
      builder: (context, child) {
        ScreenUtils().init(context);

        return Theme(
          data: ThemeData(),
          child: child,
        );
      },
    );
  }
}
