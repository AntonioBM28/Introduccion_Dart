void main(){

  final Map<String, dynamic> rawJson = {
    "name": "Tony Stark",
    "power": "-",
    "isAlive": false
  };

  final Hero ironman = Hero.fromJson(rawJson);

  print(ironman);
}

class Hero{
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name, 
    required this.power, 
    required this.isAlive, 
  });

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No Name found',
      power = json['power'] ?? 'No Power found',
      isAlive = json['isAlive'] ?? 'No isAlive found';

  @override
  String toString() {
    return '$name - $power - isAlive: $isAlive';
  }  

}