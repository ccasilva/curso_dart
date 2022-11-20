void main() {
  /*
     Notacao de cascata - Ele vai executar todas essas linhas como sendo uma cascata.
  */
  var pessoa = Pessoa()
    ..nome = 'Carlos Silva'
    ..email = 'carlos-csilva@hotmail.com'
    ..site = 'academiadoflutter.com.br'
    ..printPessoa2();

  print('''
        Pessoa:
            Nome: ${pessoa.nome}
            Email: ${pessoa.email}
            Site: ${pessoa.site}
    ''');
}

class Pessoa {
  String? nome;
  String? email;
  String? site;

  void printPessoa2() {
    print('''
        Pessoa2:
            Nome: ${nome}
            Email: ${email}
            Site: ${site}
    ''');
  }
}
