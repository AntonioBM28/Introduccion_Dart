void main(){

print('inicio');

try {
  final value = httpGet('url');
  print(value);
} catch (err) {
  print('Error: $err');
}

print('fin');

}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 2));

  throw ("Error en la petición");
}