void main() {
  try {
    print((2 / 0).toInt());
  } catch (e, stackStrace) {
    print('printando o erro $e');
    //rethrow; // propagar um erro
    //throw Exception("Ocorreu um erro XPTO"); //retornar um novo erro
    //throw CustomError("Erro customizado");
  }

  String user = 'admin';
  String pass = '123';

  //if (pass.length <= 6) throw PasswordLengthError();

  Login login = Login();

  try {
    login.logar();
  } on PasswordLengthError catch (e) {
    print('Falhou ao logar');
  } catch (e) {
    print("Outro erro");
  } finally {
    print("Envia logs para o Firebase Analytics");
  }
}

class Login {
  void logar() {
    String user = 'admin';
    String pass = '123';
    //if (pass.length <= 6) throw PasswordLengthError();
    if (pass.length <= 6) throw Exception();
  }
}

class CustomError implements Exception {
  final String error;
  CustomError(this.error);
}

class PasswordLengthError implements Exception {
  PasswordLengthError();
}
