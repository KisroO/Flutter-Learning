/**
 * Dart中的类
 *    面向对象的三大特征：继承、封装、多态
 *    Dart所有的对象都继承自Object类。
 *    Dart是一门使用类和单继承的面向对象的语言
 */
class Person {
  String _name; //私有属性，前面加_

  //初始化列表，再对象实例化之前进行操作,先赋值再执行构造函数
  // Person(String s) : this._name = '初始化' {
  //   this._name = s;
  //   print('无参构造方法');
  // }

  // 默认构造函数简写,默认构造函数只能有一个
  Person(this._name);
  // Person(String s) : this._name = 'bb' {
  //   this._name = s;
  // }

  // dart类可以有多个构造函数
  Person.now(this._name) {
    print('我是now构造函数+${this._name}');
  }

  // String getName() {
  //   return this._name;
  // }
  // getName()简写,类似计算属性
  get name {
    //get方法简写
    return this._name;
  }

  set setName(val) {
    this._name = val;
  }
}
