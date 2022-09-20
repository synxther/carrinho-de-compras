import 'dart:io';

bool condicao = true;
void main() {
  List<String> produtos = [];
  print("deseja comprar alguma coisa?");
  String comprar = stdin.readLineSync()!.toUpperCase();
  if (comprar == "SIM" || comprar == "S") {
    while (condicao) {
      print("Qual produto?");
      String produto = stdin.readLineSync()!;
      adicionar(produtos, produto);

      print("[1 or ENTER]- continuar [2]- imprimir/remover [3]-sair");
      String text = stdin.readLineSync()!.toUpperCase();
      if (text == "3") {
        condicao = false;
      } else if (text == "2") {
        imprimir(produtos, produto, text);
      }
    }
  } else {
    print("programa finalizado");
    condicao = false;
  }
}

/// variável privada pois o pois o usuário n tem controle sobre as alterações do jogo

adicionar(produtos, produto) {
  produtos.add(produto);
  print("produtos adicionados:${produtos.length}");
}

imprimir(produtos, produto, text,) {
  int numberPro = 1;
  for (var i in produtos) {
    print("item $numberPro --$i ");
    numberPro++;
  }

  // print("esse(s) são os os produtos: ${produtos}");
  print("deseja remover algum item?");
  String remover = stdin.readLineSync()!.toUpperCase();
  remove(produtos, produto, text, remover,);
}

remove(produtos, produto, text, remover) {
  if (remover == "SIM" || remover == "S") {
    print("qual produto?");

    produto = stdin.readLineSync()!;
    produtos.remove(produto);
    print("produto removido com sucesso");
  }
  print("deseja continuar comprando? Y/N");
  text = stdin.readLineSync()!;
  if (text == "Y") {
    print("adicione novos produtos \n");
  } else {
    condicao = false;
  }
}


/// houve uma troca da variável de forma local para global pois o remover não estava conseguindo usa-lá 