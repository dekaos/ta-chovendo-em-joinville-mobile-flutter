import 'package:meta/meta.dart';

String errorMessageByCode({@required int code}) {
  Map status = Map();
  status[400] = 'Erro ao processar requisição.';
  status[401] = 'Usuário não autorizado.';
  status[404] = 'Cidade não encontrada, tente uma nova busca.';
  status[500] = 'Erro interno do servidor.';
  status[503] = 'Serviço indisponível.';

  return status[code];
}

void checkBadStatusCode({@required int statusCode, @required dynamic data}) {
  if (statusCode < 200 || statusCode >= 400) {
    int code;

    if (data.containsKey('code')) {
      String responseAPICode = data['code'].toString();
      code = int.tryParse(responseAPICode) ?? 400;
    }

    throw HandleException(errorMessageByCode(code: code));
  }
}

class HandleException implements Exception {
  String exception;
  HandleException(this.exception);
}
