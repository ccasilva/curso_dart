import 'dart:convert';

/*
     Pessoa
        nome: Carlos
        email: carlos-csilva@hotmail.com
    
     Pessoa
        nome: Simone
        email: simone-silva@hotmail.com
*/

class Pessoa {
  String nome;
  String email;

  Pessoa({
    required this.nome,
    required this.email,
  });

  // @override
  // bool operator ==(Object others) {
  //   if (identical(this, others)) return true;

  //   if (others is Pessoa) {
  //     if (others.nome == nome) {
  //       if (others.email == email) {
  //         return true;
  //       } else {
  //         return false;
  //       }
  //     } else {
  //       return false;
  //     }
  //   } else {
  //     return false;
  //   }
  // }

  // @override
  // bool operator ==(Object others) {
  //   if (identical(this, others)) return true;

  //   var isEquals = false;

  //   if (others is Pessoa) {
  //     if (others.nome == nome) {
  //       if (others.email == email) {
  //         isEquals = true;
  //       }
  //     }
  //   }
  //   return isEquals;
  // }

  @override
  bool operator ==(Object others) {
    if (identical(this, others)) return true;

    return others is Pessoa && others.nome == nome && others.email == email;
  }

  @override
  String toString() => 'Pessoa(nome: $nome, email: $email)';

  @override
  int get hashCode {
    return nome.hashCode ^ email.hashCode;
  }
}
