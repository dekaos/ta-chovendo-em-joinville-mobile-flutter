class HandleException implements Exception {
  String exception;
  HandleException(this.exception);

  String errorMessageByCode (int code) {
    Map status = Map();
    status[400] = 'Erro ao processar requisição.';
    status[401] = 'Usuário não autorizado.';
    status[404] = 'Cidade não encontrada, tente uma nova busca.';
    status[500] = 'Erro interno do servidor.';
    status[503] = 'Serviço indisponível.';

    return status[code];
  }
}