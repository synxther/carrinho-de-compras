import 'dart:io';

void main() {
  List<String> produtos = [];
  print("deseja comprar alguma coisa?");
  String comprar = stdin.readLineSync()!.toUpperCase();
  bool condicao = true;
  if (comprar == "SIM") {
    while (condicao) {
      print("Qual produto?");
      String produto = stdin.readLineSync()!;
      produtos.add(produto);
      print("produtos adicionados:${produtos.length}");

      print("[1]- continuar [2]- imprimir [3]-sair");
      String text = stdin.readLineSync()!.toUpperCase();
      if (text == "3") {
        condicao = false;
      } else if (text == "2") {
        for (var i in produtos )  {
          print("itens -- $i ");
        }
        // print("esse(s) são os os produtos: ${produtos}");
        print("deseja remover algum item?");
        String remover = stdin.readLineSync()!.toUpperCase();
        if (remover == "SIM" || remover == "S") {
          print("qual produto?");

          produto = stdin.readLineSync()!;
          produtos.remove(produto);
          print(
              "produto removido com sucesso, deseja continuar comprando? Y/N");
        }
        text = stdin.readLineSync()!;
        if (text == "N") {
          condicao = false;
          print("compra finalizada");
        } else {
          print("adicione novos produtos \n");
        }
      }
    }
  } else {
    print("programa finalizado");
    condicao = false;
  }
}
/// variável privada pois o pois o usuário n tem controle sobre as alterações do jogo 