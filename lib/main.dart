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
        body: CalculateChange(),
      ),
    );
  }
}

class CalculateChange extends StatefulWidget {
  const CalculateChange({super.key});

  @override
  State<CalculateChange> createState() =>
      _CalculateChangeState();
}

class _CalculateChangeState extends State<CalculateChange> {
  String estadoVisor = '';

  String estadoVisorAcao(String? acao) {
    if (acao == 'C') {
      return 'Apagar';
    }
    if (acao == 'DEL') {
      return 'Limpo';
    }
    if (acao == '%') {
      return 'Porcentagem';
    }
    if (acao == '/') {
      return 'Dividir';
    }
    if (acao == '*') {
      return 'Multiplicar';
    }
    if (acao == '+') {
      return 'Somar';
    }
    if (acao == '-') {
      return 'Subtrair';
    }
    if (acao == '.') {
      return 'Ponto';
    }
    if (acao == '=') {
      return 'Igual/Enter';
    }
    final n = int.tryParse(acao ?? '');
    if (n != null && n >= 0 && n <= 9) {
      return '$n';
    }
    return 'Desconhecido';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          margin: EdgeInsets.all(15),
          width: 400,
          height: 120,
          child: Center(
            child: Text(
              "$estadoVisor",
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('C');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao(
                          'DEL',
                        );
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('%');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('/');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('7');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('8');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('9');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('*');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('4');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('5');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('6');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('+');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('1');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('2');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('3');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('-');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('0');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('.');
                      });
                    },
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
                    onPressed: () {
                      setState(() {
                        estadoVisor = estadoVisorAcao('=');
                      });
                    },
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
    );
  }
}
