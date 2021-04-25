/**
 * Dart中对象的操作符
 *    ?      条件运算符
 *    as     类型转换
 *    is     类型判断
 *    ..     级联操作
 */
class Cat {
  String name;
  int age;
  Cat(this.name, this.age);
  void printInfo() {
    print("info--${name}");
  }
}

void main() {
  Cat c1 = new Cat('橘猫', 1);
  if (c1 is Cat) {
    print("c1是猫");
  }
  if (c1 is Object) {
    print("c1是对象");
  }

  //as 类型转换
  var c2;
  c2 = new Cat('aa', 1);
  c2.printInfo(); //旧版不支持
  (c2 as Cat).printInfo(); //新版本    推荐

  //   ..级联操作
  Cat c3 = new Cat('bb', 2);
  c3
    ..name = 'tt'
    ..age = 3;
}
