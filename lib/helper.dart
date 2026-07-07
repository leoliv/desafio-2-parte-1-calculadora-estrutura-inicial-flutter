import 'package:math_expressions/math_expressions.dart';

class Helper {
  String _estadoVisor = '0';

  void estadoVisorAcao(String? acao) {
    if (acao == 'C') {
      _estadoVisor = 'Apagar';
    }
    if (acao == 'DEL') {
      _estadoVisor = 'Limpo';
    }
    if (acao == '%') {
      _estadoVisor = 'Porcentagem';
    }
    if (acao == '/') {
      _estadoVisor = 'Dividir';
    }
    if (acao == '*') {
      _estadoVisor = 'Multiplicar';
    }
    if (acao == '+') {
      _estadoVisor = 'Somar';
    }
    if (acao == '-') {
      _estadoVisor = 'Subtrair';
    }
    if (acao == '.') {
      _estadoVisor = 'Ponto';
    }
    if (acao == '=') {
      _estadoVisor = 'Igual/Enter';
    }
    final n = int.tryParse(acao ?? '');
    if (n != null && n >= 0 && n <= 9) {
      _estadoVisor = '$n';
    }
  }

  void setarValor(String valor) {
    if (_estadoVisor == '0') {
      _estadoVisor = valor;
    } else {
      _estadoVisor += valor;
    }
  }

  void resetar() {
    _estadoVisor = "0";
  }

  void realizarCalculo() {
    ExpressionParser p = GrammarParser();
    Expression exp = p.parse(_estadoVisor);
    ContextModel cm = ContextModel();
    double resultado = exp.evaluate(
      EvaluationType.REAL,
      cm,
    );
    _estadoVisor = resultado.toString();
  }

  String get obterEstado {
    return _estadoVisor;
  }
}
