import 'package:flutter/material.dart';

//TODO - 1: Adicione uma tela em branco (Scaffold) e defina a cor de fundo para 'balck12, ou seja criativo e escolha sua própria cor'

//TODO - 2: Crie uma appBar para o aplicativo, como título: 'Calculadora',
//cor de fundo: 'black, ou seja criativo e escolha sua própria cor'

//TODO - 3: Crie um corpo para o app Utilizando o Widget Column. Dentro dessa coluna inclua um container que temporariamente servirá como nosso display.
//Altere a propriedade color desse container para: 'white', dê um espaçamento nas margens de: '15'.
//O width deve ser: '400' e o height: '120'.
//Exiba o texto 'visor' no centro do container, o tamanho da fonte deve ser: '50'.

//TODO - 4: Crie um novo Container, que receberá um column, que por sua vez receberá vários rows,
// que por sua vez receberão vários raisedbuttons para criar os botões da nossa calculadora.
//A calculadora deve ficar com o visual similar ao da imagem apresentada
//em: https://drive.google.com/file/d/1fuKl3cdlr1J-PsLLmKtStvgeHiaeahO6/view?usp=sharing.
//Dicas: pesquisem no flutter.dev pelas classes/widgets: 'Expanded' e 'RaisedButton';
//As cores podem ser diferentes para os botões,
//fica a seu critério, porém, a estrutura dos botões deve ser a mesma apresentada na imagem.

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text(
            "Calculadora",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(15),
              width: 400,
              height: 120,
              child: Center(
                child: Text(
                  "Visor",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                  ),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "C",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "DEL",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "%",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "/",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "7",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "8",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "9",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "*",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "4",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 80),
                        ),
                        onPressed: () {},
                        child: Text(
                          "5",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 80),
                        ),
                        onPressed: () {},
                        child: Text(
                          "6",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 80),
                        ),
                        onPressed: () {},
                        child: Text(
                          "+",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "1",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 80),
                        ),
                        onPressed: () {},
                        child: Text(
                          "2",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 80),
                        ),
                        onPressed: () {},
                        child: Text(
                          "3",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 80),
                        ),
                        onPressed: () {},
                        child: Text(
                          "-",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 100),
                        ),
                        onPressed: () {},
                        child: Text(
                          "0",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 80),
                        ),
                        onPressed: () {},
                        child: Text(
                          ".",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(80, 80),
                        ),
                        onPressed: () {},
                        child: Text(
                          "=",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
