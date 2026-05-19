void main(){

final Hero spiderman = Hero(name: "Spiderman", power: "Telaraña");

print(spiderman);
print(spiderman.name);
print(spiderman.power);

}

class Hero{
  String name;
  String power;

  Hero({
    required this.name, 
    this.power = 'Sin poder'
  });

@override
  String toString() {
    return '$name - $power';
  }


}