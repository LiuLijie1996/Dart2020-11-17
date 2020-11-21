class Television{
  // 该注解表示，当前接口以后可能会被弃用
  @deprecated
  void action(){

    this.turnOn();
  }

  void turnOn(){
    print("turnOn");
  }  
}

void main(List<String> args) {
  var t = Television();
  
  t.action();
  t.turnOn();
}