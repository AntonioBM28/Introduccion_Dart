void main(){

}

Stream<int> emitNumbers(){
  return Stream.periodic(Duration(seconds: 1), (value){
    return value;
  });
}