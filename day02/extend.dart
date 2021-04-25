/**
 * Dart中的继承     与java中类似   
 *    1.字类使用extends关键字来继承父类
 *    2.字类会继承父类中公有的方法，但是构造方法不能被继承
 *    3.子类可以重写父类方法  getter和setter
 *  
 */
class Person {
  String name = '张三';
  num age = 12;
  Person(this.name, this.age);
  void printInfo() {
    print('${this.name}----${this.age}');
  }
}

class Web extends Person {
  //使用super关键字来调用父类构造方法
  Web(String name, num age) : super(name, age);
  void printRes() {
    print('Web字类的方法');
  }

  //重写父类的方法，可以使用@Override注解，也可以不用
  void printInfo() {
    print('子类的printInfo');
  }
}

void main() {
  Web web = new Web('yy', 3);
  web.printInfo();

  //向上转型
  Person web1 = new Web('tt', 2);
  //向上转型，对象只能调用父类的公有方法，子类新增的方法无法被调用
  // web1.printRes();   无法调用
}
