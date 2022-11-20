import 'camiseta.dart';

//Public public
//Privado private

//Protegido protected - No dart nao existe metodos protegidos(Sao classes que poderia acessar aquele metodo)

void main() {
  var camisetaNike = Camiseta();
  camisetaNike.tamanho = 'G';
  camisetaNike.cor = 'Preta';
  camisetaNike.marca = 'Nike';

  print(' Isso é uma "${Camiseta.nome}"');
  //Camiseta.nome = 'Camiseta da Nike';
  print(' Isso agora é uma "${Camiseta.recuperarNome()}"');

  print('');

  print(''' 
     Camiseta:
        Tamanho ${camisetaNike.tamanho}
        Cor: ${camisetaNike.cor}
        Marca: ${camisetaNike.marca}
        Tipo lavagem: ${camisetaNike.tipoDeLavagem()}
   ''');

  var camisetaAddidas = Camiseta();
  camisetaAddidas.tamanho = 'M';
  camisetaAddidas.cor = 'Verde';
  camisetaAddidas.marca = 'Addidas';

  print(''' 
     Camiseta:
        Tamanho ${camisetaAddidas.tamanho}
        Cor: ${camisetaAddidas.cor}
        Marca: ${camisetaAddidas.marca}
        Tipo lavagem: ${camisetaAddidas.tipoDeLavagem()}
   ''');
}
