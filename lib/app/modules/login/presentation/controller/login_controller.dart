import 'package:flutter/cupertino.dart';
import 'package:flutter_login_with_facebook_study/app/core/utils/screen_utils.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  @observable
  int value = 0;

  init(BuildContext context){
    
  }

  @action
  void increment() {
    value++;
  }
}
