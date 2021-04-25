# Dart安装

windows，下载安装包：https://gekorm.com/dart-windows/

官方文档：https://dart.dev/get-dart

vscode安装插件：

![image-20210423150656700](E:\JAVA Data\Flutter\assets\image-20210423150656700.png)

## 初识

### main函数入口

新建文件`hello.dart`文件，每句话结束要写分号

> dart文件名称尽量用英文

```dart
main(){
  print('hello dart');
}

// 定义没有返回值的方法,void关键字
void main(){
  print('hello dart');
}

```

> 单行注释用`//`，多行注释可以用`/* */`

### 变量

dart可以不预先定义变量类型，会自动进行类型推导


> dart中通过`var`关键字来声明变量

```dart
void main(){
  var str = 'first dart 文件';
  print(str);
}
```
> dart也可以用String、int等关键字声明具体类型的变量
```dart
void main(){
  //使用var关键字声明变量
  var str = 'first dart 文件';
  var val = 1234;
  var fl = 12.12;
  print(str);
  print(val);
  print(fl);

  //使用String关键字声明字符串变量
  String str1='文件输出';
  //使用int关键字声明数值型变量
  int valnum = 12312;
  print(str1);
  print(valnum);
}
```

类型不一致会报错

```dart
void main(){
  var str = '';
  str=123;
  print(str);
}
```

报错信息

![image-20210423152852271](E:\JAVA Data\Flutter\assets\image-20210423152852271.png)

> dart区分大小写。

### 常量

> dart中使用const关键字声明常量，常量建议全大写
>
>   常量一经定义，便不能修改，否则会报错

```dart
void main(){
  //使用const定义常量
  const PI=3.14;
  print(PI);
}
```

> final关键字也可以定义常量，作用类似
>
>   区别：
>
> ​    final可以开始不赋值，且只能复制一次；
>
> ​    而final不仅拥有const的编译时常量的特性，最重要的是它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化。

```dart
final E=2.1;
print(E);
```

```dart
// const a = new DateTime.now();  报错
final b = new DateTime.now();  // 正确用法
```

### 数据类型

1. 字符串

   ```dart
   //1.字符串的定义
   //1.1 var关键字
   var str1 = "aaa";
   //1.2 String关键字
   String str2 = 'bbb';
   //  使用三个单引号可以定义多行的字符串
   String str3 = '''this is
       my app
     '''
   print(str1);
   print(str2);
   print(str3)
       
   //字符串的拼接，使用$加上变量名
   String s1 = '你好';
   String s2 = 'Dart';
   print('$s1 $s2');
   //使用加号+也可以拼接字符串
   print(s1 + s2);
   print('===========================');
   ```

2. 数值类型

   ```dart
   /**
    * 数值类型
    */
   void main() {
     //1.int
     int a = 123;
     //2.double,可以是浮点型，也可以是整型
     double b = 12.3;
     print(b);
     b = 12;
     print(a);
     print(b);
     //3. 运算符
     var c = a + b;
     print(c);
   }
   
   ```

3. 布尔类型

   ```dart
   /**
    * bool类型
    */
   void main() {
     //1. bool 只有true/false
     bool flag = true;
   
     print(flag);
     //条件判断语句
     if (flag) {
       print('真');
     } else {
       print('假');
     }
   }
   ```

4. List

   ```dart
   /**
    * List类型：集合/数组
    */
   void main() {
     //1. var创建集合
     var li = ['张三', 20, true];
     print(li);
     //通过集合.length,获取集合的长度
     print(li.length);
     //访问集合元素
     print(li[0]);
   
     //2. 常见指定类型的集合
     List l2 = <String>['张三', '李四'];
     List l3 = <int>[10, 20, 30];
     print(l2);
     print(l3);
   
     //创建空的list  通过add方法增加数据
     var l4 = [];
     l4.add("王老五");
     l4.add(133);
     print(l4);
     print("====================");
     //创建固定长度的集合
     var l5 = List<String>.filled(2, ""); //第一个参数是集合的长度，第二个参数是值
     print(l5);
     l5[0] = 'ja';
     l5[1] = 'cc';
     print(l5);
     // l5.add("ff");  错误，此时l5集合已经满了，无法再增加数据
   }
   
   ```

5. Map

   ```dart
   /**
    * Map类型
    */
   void main() {
     // 定义map
     var person = {
       'name': '张三',
       'age': 20,
       'work': ["程序员", "外卖员"]
     };
     print(person);
     //访问值
     print(person['name']);
     print(person['work']);
     print('=================');
     //2.定义map, 通过new Map()
     var p = new Map();
     p['name'] = '李四';
     p['age'] = 21;
     p['work'] = ["程序员", "外卖员"];
     print(p);
     print(p['work']);
   }
   
   ```

### 类型判断

```dart
/**
 * 使用is关键字来判断类型
 */
void main() {
  var str = 'aa';
  if (str is String) {
    print("字符串类型");
  }
}

```

### 类型转换

```dart
/**
 * 类型转换
 */
void main() {
  //使用  int.pares()，将String转为int
  var str = '123';
  var b = int.parse(str);
  print(b is int);

  // double.parse(),将String转为double
  // try catch finally  与Java类似
  var s2 = '12.3';
  try {
    var d = double.parse(s2);
    print(d is double);
  } catch (e) {
    print('类型转换异常');
  } finally {
    print('finally 执行');
  }

  //  int 转 String
  var c = 12;
  var s3 = c.toString();
  print(s3);
  print('=================');
  //  isEmpty判断是否为空
  var s4 = 'aa';
  if (s4.isEmpty) {
    print('字符串为空');
  } else {
    print('不为空');
  }
}

```

### 循环语句

```dart
/**
 * 循环
 *    for  while  do...while
 * 
 *    break   continue
 */
void main() {
  //for   while  循环和Java类似
  //do...while
  var n = 0;
  do {
    n++;
    print(n);
  } while (n < 10);
}

```

### 集合详解：List

```dart
/**
 * 集合类型详解:  List
 *    属性：
 *      length        长度
 *      reversed      元素倒置
 *      isEmpty       是否为空
 *      isNotEmpty    是否不为空
 *    方法：
 *      add           增加
 *      addAll        拼接数组，增加一组值
 *      indexOf       返回查找值的index下标
 *      remove        删除  传入具体值
 *      removeAt      删除  传入索引值
 *      fillRange     修改
 *      insert(index,value)   指定位置插入value值
 *      insertAll(index,list) 指定位置插入list
 *      toList        将其他类型转换为List
 *      join          List转换为字符串
 *      split(patt)   字符串转为List
 *      foreach
 */
void main() {
  //fillRange
  List l1 = ['香蕉', '苹果', '西瓜'];
  l1.fillRange(1, 3, 'aa'); //将苹果和西瓜改为aa
  print(l1);
  l1.insert(1, '芒果'); //再香蕉前面插入芒果
  print(l1);
  print('=================');

  List l2 = ['香蕉', '苹果', '西瓜'];
  var str = l2.join(','); //将List用逗号连接成一串字符串      输出   香蕉,苹果,西瓜
  print(str);
  print(str is String); // 为 true

  var ll = str.split(','); //根据逗号将子妇产分割为List      输出    [香蕉, 苹果, 西瓜]
  print(ll);
  print(ll is List); // 为true


  //循环
  List l6 = ['香蕉', '苹果', '西瓜'];
  //1.使用for循环打印
  // for (var i = 0; i < l6.length; i++) {
  //   print(l6[i]);
  // }

  // 2.使用 for in打印
  // for (var item in l6) {
  //   print(item);
  // }
  //
  //
  //3. foreach  打印
  l6.forEach((element) {
    print(element);
  });
}

```

### 集合详解：Set

```dart
/**
 * Set集合详解
 *    常用来去除数组中的重复元素
 *    Set集合是没有顺序且不重复的集合，不能通过索引去获取值
 */
void main() {
  var s1 = new Set();
  s1.add('香蕉');
  s1.add('苹果');
  s1.add('香蕉');
  print(s1); //输出 {香蕉, 苹果}
  print(s1 is Set); //  true

  print(s1.toList()); //将Set转为List

  print('=====================');
  //list去重
  List l1 = ['香蕉', '苹果', '西瓜', '芒果', '苹果', '西瓜'];
  var s = new Set();
  s.addAll(l1);
  print(s.toList());
}

```

### 集合详解：Map

```dart
/**
 * Map详解
 *    常用属性：
 *        keys      获取所有的key
 *        values     获取所有的value
 *        isEmpty   是否为空
 *        isNotEmpty  是否不为空
 *    常用方法：
 *        remove(key)   删除指定key的数据
 *        addAll({...})   合并映射  添加属性
 *        containsValue(value)   是否含有value这个值  返回true/false
 *        foreach
 *        map
 *        where
 *        any
 *        every
 */
void main() {
  var person = {'name': '张三', 'age': 20};
  var m = new Map();
  m['name'] = '李四';
  print(person); //输出    {name: 张三, age: 20}
  print(m); //输出    {name: 李四}
  print('===================');

  //常用属性
  //keys
  print(person.keys.toList()); //[name, age]
  //values
  print(person.values.toList()); //[张三, 20]

  List l1 = ['香蕉', '苹果', '西瓜'];

  //foreach  打印
  l1.forEach((element) {
    print(element);
  });
  //map修改数据
  List list02 = [1, 2, 3];
  list02 = list02.map((value) {
    return value * 2;
  }).toList();
  print(list02);

  //where  过滤
  List list03 = [1, 4, 25, 52, 3, 9, 14, 24, 55];
  list03 = list03.where((element) {
    return element > 10;
  }).toList();
  print(list03);

  //any  只要集合中有一个值满足条件就返回true
  List list04 = [1, 4, 25, 52, 3, 9, 14, 24, 55];
  var f = list04.any((element) {
    return element > 10;
  });
  print(f);
  //every  集合中每一个元素都要满足条件才返回true，否则返回false
  List list05 = [1, 4, 25, 52, 3, 9, 14, 24, 55];
  var fl = list05.every((element) {
    return element > 10;
  });
  print(fl);
}

```

### 函数

```dart
/**
 * Dart函数
 *    自定义方法
 *    
 *    返回值类型  方法名称(参数类型 参数名){
 *        方法体
 *        return
 *    }
 */
//普通方法
String getStr(String a) {
  return a + 'this';
}

//可变参方法
String getAge(String username, [int age = 0]) {
  //age形参，可传可不传,默认为0
  if (age != null) {
    return username + "$age";
  } else {
    return username;
  }
}

//指定参数名称
void getArea(String name, {int x = 1, int y = 2}) {
  print("$name----");
}

void main() {
  String str = getStr('ccc');
  print(str);
  String str1 = getAge('张三');
  print(str1);
  getArea('李四');
  //自执行方法
  (() {
    print('自执行方法');
  })();
}


```

### 闭包

> 为了变量不污染全局，并且可以常驻内存.

```dart
/**
 * Dart闭包
 * 
 *    1.全局变量的特点：全局变量常驻内存、全局变量污染全局
 *    2.局部变量的特点：不常驻内存，会被垃圾回收机制回收、不会污染全局
 * 
 * 
 *    闭包：
 *        函数嵌套函数，内部函数会调用外部函数的变量或者参数
 *        闭包的写法：函数嵌套函数，并return里面的函数，这样就形成了闭包。
 */
void main() {
  printInfo() {
    var a = 123; //不会污染全局,可以常驻内存
    return () {
      a++;
      print(a);
    };
  }

  var b = printInfo();
  b();
}

```

## 类与对象

### 初始

Person.dart

```dart
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

```

main函数

> Dart中使用import关键字，引入其他dart文件

```dart
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
```

### 静态成员、操作符和继承

**静态成员**

```dart
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

```

**操作符**

```dart
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

```

**继承**

```dart
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

  //重写父类的方法，可以使用@override注解，也可以不用
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

```

### 抽象类

```dart
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

```

### 多态

```dart
/**
 * Dart中的多态
 *    允许将子类类型的指针赋值给父类类型的指针，同一个函数调用会有不同的执行效果
 *    子类的示例赋值给父类引用
 *    多条就是父类定义一个方法不去实现，让继承他的子类去实现，每个子类都有不同表现
 */
//代码和抽象类中类似
```

### 接口

```dart
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

```

## Flutter

### 安装Android Studio

官网：https://developer.android.google.cn/studio#downloads

![image-20210425162538378](E:\Dart Project\demo01\assets\image-20210425162538378.png)

**安装完Android Studio后，在Android Studio中安装Flutter插件**

### 安装FlutterSDK

官网：https://flutter.dev/docs/development/tools/sdk/releases

> 此处下载的是2.3版本

![image-20210425165631527](E:\Dart Project\demo01\assets\image-20210425165631527.png)

将下载好的压缩包解压到你想存放FlutterSDK的位置

### 修改环境变量

> 将flutter sdk的bin目录路径，加入到系统环境变量的Path变量中

![image-20210425170100812](E:\Dart Project\demo01\assets\image-20210425170100812.png)

> cmd输入flutter -v，检查安装信息

### 配置国内镜像源

https://flutter.cn/

![image-20210425170737257](E:\Dart Project\demo01\assets\image-20210425170737257.png)

**配置环境变量**

检查环境是否配置成功

```shell
flutter doctor
```

![image-20210425171233419](E:\Dart Project\demo01\assets\image-20210425171233419.png)

**发现上面出现红叉**

根据提示，输入命令

```shell
flutter config --android-sdk [你的Android SDK安装路径]
#此处我的是安装路径是D:\AndroidSDK
```

再次执行  `flutter doctor`，发现还是爆红叉

![image-20210425172302923](E:\Dart Project\demo01\assets\image-20210425172302923.png)

根据提示，输入

```shell
flutter doctor --android-licenses
```

途中一直输入y即可。

再次输入`flutter doctor`，成功安装flutter

![image-20210425172510145](E:\Dart Project\demo01\assets\image-20210425172510145.png)

### VSCode配置Flutter开发环境

安装以下三个插件

![image-20210425172946643](E:\Dart Project\demo01\assets\image-20210425172946643.png)

### VSCode创建Flutter项目

按ctrl+shift+P，打开命令面板

![image-20210425173208059](E:\Dart Project\demo01\assets\image-20210425173208059.png)