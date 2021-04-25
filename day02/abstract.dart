/**
 * Dart使用abstract关键字来定义抽象类
 *    Dart抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口
 *    1.Dart中的抽象方法不能使用abstract关键字声明，Dart没有方法体的方法称为抽象方法；
 *    2.如果子类继承抽象类，就必须实现抽象类中的抽象方法；
 *    3.如果把抽象类当作接口来实现的话，必须的实现抽象类中定义的所有属性和方法；
 *    4.抽象类不能被实例化，只有继承他的子类才能被实例化。
 * 
 * extends抽象类和implements的区别：
 *    1.如果要复用抽象类中的方法，并且要  用抽象方法约束子类的话我们就用extends继承抽象类；
 *    2.如果只是把抽象类当作标准，我们就用implements来实现抽象类。
 */
abstract class Animal {
  eat(); //抽象方法
  printInfo() {
    //定义普通方法，每一个子类都可以调用它
    print('抽象类中的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('Dog--eat');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('Cat--eat');
  }
}

void main() {
  Dog d1 = new Dog();
  d1.eat();
  Cat c = new Cat();
  c.eat();
}
