void main(){

print(greetPerson("Juan", message: "Bienvenido"));
print(greetPerson2(name: "Maria", message: "Hola"));

}

String greetPerson(String name, String message = "Hola"){
  return "$message, $name";
}

String greetPerson2({required String name, required String message}){
  return "$message -> $name";
}


int addTowNumbers(int a, int b) => a + b;