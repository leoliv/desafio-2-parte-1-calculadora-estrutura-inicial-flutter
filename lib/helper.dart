class Helper {
  String _estadoVisor = '';

  estadoVisorAcao(String? acao) {
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

  String get obterEstado {
    return _estadoVisor;
  }
}
