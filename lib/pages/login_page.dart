import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siga_flutter/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // input for user(cpf) and password
            TextField(
              controller: loginController.loginController,
              decoration: const InputDecoration(
                labelText: 'Usuario',
              ),
            ),
            TextField(
              controller: loginController.passwordController,
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
            ),
            // button to login
            ElevatedButton(
              child: const Text('LOGIN'),
              onPressed: () {
                loginController.login();
              },
            ),
            Obx(
              () => Text(
                '${loginController.loginResult.value?.nome}',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            // image base 64
            Obx(
              () => loginController.loginResult.value?.foto != null
                  ? Image.memory(base64Decode(
                      loginController.loginResult.value?.foto ?? ""))
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
