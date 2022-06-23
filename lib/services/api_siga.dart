import 'package:get/get.dart';
import 'package:siga_flutter/models/login_model.dart';

class ApiSigaService extends GetConnect {
  Future<LoginModel> login({
    required String login,
    required String password,
  }) async {
    final response = await get(
        'https://sigaaluno.ifto.edu.br/sigaepct-rest/login',
        headers: {'login': login, 'senha': password});

    final loginModel = LoginModel.fromJson(response.body);

    return loginModel;
  }
}
