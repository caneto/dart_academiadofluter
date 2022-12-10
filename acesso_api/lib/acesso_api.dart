import 'dart:convert';

void main() {
  final jsonCEP = '''
  {
    "cep": "20740-260",
    "logradouro": "Rua Assis Carneiro",
    "complemento": "B4 - 108",
    "bairro": "Piedade",
    "localidade": "Rio de Janeiro",
    "uf": "RJ",
    "ibge": "3350300",
    "gia": "2001",
    "ddd": "21",
    "saifi": "3202"
   }
   ''';

  final jsonData = json.decode(jsonCEP);

  print(jsonData['logradouro']);
}