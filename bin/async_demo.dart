// Neste exercício, você irá executar uma função assíncrona que simula o login de um usuário
// e a consulta de seu saldo bancário

// 1 execute o método de login informando o e-mail e a senha
// 2 caso o email e senha sejão válidos, consulte o saldo do usuário informando o token e printando o resultado no console
// 3 caso o email ou senha sejão inválidos, printe a mensagem de erro. 


void main() {
String email = 'email@email.com';
String senha = '123';
login(email, senha);

Future<String> future = login (email, senha);
future.then((token)  {

  final futureSaldo = consultarSaldo(token);
  futureSaldo.then((num saldo){

  print(saldo);
  });

}).catchError((error){
  print(error);
});

// print (consultarSaldo(token));

}


Future<String> login(String email, String senha) async {
  // String email = 'email@email.com';
  // String senha = '123';
  // Simulando um atraso de download de 2 segundos
  await Future.delayed(Duration(seconds: 2));
  
  if(email != 'email@email.com' || senha != '123') {
    throw Exception('email ou senha inválida');
  }

  // Simulando informações de token de acesso do usuário
  final token = 'bas89e8ahdkkdassd';

  return token;
}

Future<num> consultarSaldo(String token) async {
     // Simulando um atraso de download de 3 segundos
  await Future.delayed(Duration(seconds: 3));
  
  return 2000;
}