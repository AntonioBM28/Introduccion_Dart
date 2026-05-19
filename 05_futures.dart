void main(){

  print('Inicio del programa');
  httpGet('url').then((value) {
    
  }).catchError((err) {
    print('Error: $err');
  });

  print('Fin del programa');
}

String httpGet(String url){
  return Future.delayed(Duration(seconds: 2), () {
    throw ("Error en la petición");
  });

}