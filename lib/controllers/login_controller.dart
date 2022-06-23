import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:siga_flutter/models/login_model.dart';
import 'package:siga_flutter/services/api_siga.dart';

class LoginController extends GetxController {
  final TextEditingController loginController = TextEditingController(text: "");
  final TextEditingController passwordController =
      TextEditingController(text: "");
  //nullable obs with type LoginModel
  Rx<LoginModel?> loginResult = Rx<LoginModel?>(null);
  ApiSigaService apiSigaServoce = ApiSigaService();

  login() async {
    final response = await apiSigaServoce.login(
      login: loginController.text,
      password: passwordController.text,
    );
    loginResult.value = response;
  }
}
