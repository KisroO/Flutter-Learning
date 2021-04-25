import 'class.dart';

/**
 * 
 */
void main() {
  Person p1 = new Person('one');
  //获取get方法，通过对象名.方法名称，不需要括号
  String name = p1.name;
  print('p1.name--1--${name}');
  //设置属性
  p1.setName = 'two';
  name = p1.name;
  print('p1.name--2--${name}');
  Person p2 = new Person.now('cc');
}
