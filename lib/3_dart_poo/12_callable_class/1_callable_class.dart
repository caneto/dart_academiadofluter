import 'envia_email.dart';

void main() {
  var enviarEmail = EnviarEmail();
  enviarEmail('caneto@gmail.com');
  enviarEmail.enviar('caneto@gmail.com');

}
