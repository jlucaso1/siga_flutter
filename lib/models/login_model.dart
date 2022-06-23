class LoginModel {
  String? token;
  int? id;
  int? idPessoaFisica;
  String? login;
  String? nome;
  String? emailInstitucional;
  String? foto;

  LoginModel(
      {this.token,
      this.id,
      this.idPessoaFisica,
      this.login,
      this.nome,
      this.emailInstitucional,
      this.foto});

  LoginModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    id = json['id'];
    idPessoaFisica = json['idPessoaFisica'];
    login = json['login'];
    nome = json['nome'];
    emailInstitucional = json['emailInstitucional'];
    foto = json['foto'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;
    data['id'] = id;
    data['idPessoaFisica'] = idPessoaFisica;
    data['login'] = login;
    data['nome'] = nome;
    data['emailInstitucional'] = emailInstitucional;
    data['foto'] = foto;
    return data;
  }
}
