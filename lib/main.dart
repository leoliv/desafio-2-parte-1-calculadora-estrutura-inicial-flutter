import 'package:desafio_2_parte_1_calculadora_estrutura_inicial_flutter/Helper.dart';
import 'package:flutter/material.dart';

Helper helper = Helper();
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
  Widget teclaCalculadora({
    required String title,
    Color cor = Colors.white,
  }) {
    return Expanded(
      child: TextButton(
        // style: TextButton.styleFrom(
        //   fixedSize: const Size(80, 100),
        // ),
        onPressed: () {
          setState(() {
            helper.estadoVisorAcao(title);
          });
        },
        child: Text(
          title,
          style: TextStyle(color: cor, fontSize: 30),
        ),
      ),
    );
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
              helper.obterEstado,
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                  children: [
                    teclaCalculadora(
                      title: "C",
                      cor: Colors.blue,
                    ),
                    teclaCalculadora(
                      title: "Del",
                      cor: Colors.blue,
                    ),
                    teclaCalculadora(
                      title: "%",
                      cor: Colors.blue,
                    ),
                    teclaCalculadora(
                      title: "/",
                      cor: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                  children: [
                    teclaCalculadora(title: "7"),
                    teclaCalculadora(title: "8"),
                    teclaCalculadora(title: "9"),
                    teclaCalculadora(
                      title: "*",
                      cor: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                  children: [
                    teclaCalculadora(title: "4"),
                    teclaCalculadora(title: "5"),
                    teclaCalculadora(title: "6"),
                    teclaCalculadora(
                      title: "+",
                      cor: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                  children: [
                    teclaCalculadora(title: "1"),
                    teclaCalculadora(title: "2"),
                    teclaCalculadora(title: "3"),
                    teclaCalculadora(
                      title: "-",
                      cor: Colors.blue,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                  children: [
                    teclaCalculadora(title: "0"),
                    teclaCalculadora(title: "."),
                    teclaCalculadora(
                      title: "=",
                      cor: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//TODO - 1 : Crie uma função que será responsável por construir os botões da calculadora evitando a redundância que temos atualmente no código-fonte. Se tiver dúvidas quanto à criação dessa função volte e assista a aula #41 - App Marimba - Atualizando a interface do nosso App (https://www.youtube.com/watch?v=HevYf8Pila4).

//TODO - 2: Lembre-se de repassar as informações necessárias para dentro da função a ser criada no TODO - 1. São algumas das principais informações a serem repassadas: o caracter da tecla, a cor da tecla e o método onPressed.

//TODO - 3: Para resolver as equações com as operações disponíveis em nossa calculadora utilizaremos um pacote chamado math_expressions. Esse paco consegue pegar uma equação elaborada, como por exemplo (3+2) ou (10+5)/3 e resolvê-la. Nesse sentido, crie um método chamado setarValor que receberá um parâmetro do tipo String para o valor da tecla pressionada.

//TODO - 4: No método onPressed faça uma chamada para o método setValor e passe o valor da tecla pressionada. Lembre-se que nessa altura seu código já deve estar otimizado para que os botões sejam construídos através de uma função.

//TODO - 5: Dentro do método setValor insira um setState e dentro do setState crie uma estrutura condicional que deve testar se a variável mensagemVisor é igual a 0. Caso seja, a variável mensagemVisor deve apenas receber o primeiro valor repassado, caso contrário, utilize o += para receber e concatenar o valor na String e formar a expressão.

//TODO - 6: Crie um método chamado resetar para zerar a calculadora caso precise realizar outras contas.

//TODO - 7: Para as teclas: C e DEL, no onPressed ao invés do setValor chame o método resetar para zerar a calculadora.

//TODO - 8: Faça a instalação do pacote math_expressions (https://pub.dev/packages/math_expressions).

//TODO - 9: Importe o pacote math_expressions.

//TODO - 10: Crie um método chamado realizarCalculo.

//TODO - 11: Utilizando o arquivo readme e os exemplos disponíveis na página oficial do pacote math_expressions crie uma variável que receba a nossa expressão matemática que atualmente se encontra dentro da variável mensagemVisor.

//TODO - 12: Ainda utilizando a documentação oficial da math_expressions faça com que a expressão seja executada e que o resultado seja armazenado em uma outra variável.

//TODO - 13: Utilizando um setState, ainda dentro do método realizarCalculo faça com que o valor da variável mensagemVisor seja atualizado para o resultado obtido através do uso da math_expressions. Você precisará converter esse resultado para String (se não souber como fazer esse tipo de conversão dê um Google xD).

//TODO - 14: Para a tecla de divisão utilizamos o símbolo "÷", entretanto, esse símbolo não é reconhecido desta forma nas expressões matemáticas. Utilize o método replaceAll (https://api.flutter.dev/flutter/dart-core/String/replaceAll.html) para substituir o símbolo "÷" pelo "/" antes da expressão ser repassada ao math_expressions.

//TODO - 15: Na versão mais recente do Flutter o RaisedButton foi descontinuado. Como desafio, sugiro que você atualize esse widget para a versão mais recente. Dê uma olhada no link a seguir: https://api.flutter.dev/flutter/material/RaisedButton-class.html.

//TODO - 16: Execute o app.

//TODO - 17: Seja feliz!
