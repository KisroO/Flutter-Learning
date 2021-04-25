/**
 * Dart中类的静态成员
 *    1.使用static关键字，定义静态属性和静态方法
 *    2.静态方法不能访问非静态成员，非静态方法可以访问静态成员。
 * 
 *  
 * 
 */
class Animal {
  static String name = '张三';
  static void printNameInfo() {
    print("name--${name}");
  }
}

void main() {
  //通过类.属性  访问静态属性
  String name = Animal.name;
  print("Animal.name----${name}");
  //通过类.方法  执行静态方法
  Animal.printNameInfo();
}
