/**
 * 和Java一样，Dart也有接口，但是和Java还是有所区别：
 *    1.Dart的接口没有interface关键字来定义接口，而是普通类或抽象类都可以作为接口被实现
 *    2.同样使用implements关键字来实现接口
 * 
 *    如果dart实现的类是普通类，会将普通类和抽象中的属性的方法全部需要覆写一遍
 *    而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果要实现先Java接口那样的方式，一般会使用抽象类，
 *    
 *    建议使用抽象类定义接口
 */
abstract class Db {
  add();
  save();
  edit();
  delete();
}

class Mysql implements Db {
  @override
  add() {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  delete() {
    throw UnimplementedError();
  }

  @override
  edit() {
    throw UnimplementedError();
  }

  @override
  save() {
    throw UnimplementedError();
  }
}

class MonogoDb implements Db {
  @override
  add() {
    throw UnimplementedError();
  }

  @override
  delete() {
    throw UnimplementedError();
  }

  @override
  edit() {
    throw UnimplementedError();
  }

  @override
  save() {
    throw UnimplementedError();
  }
}
