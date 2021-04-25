/**
 * 常用数据类型：
 *    Numbers(数值)：
 *      int
 *      double
 *    Strings(字符串)：
 *      String
 *    Booleans(布尔)：
 *      bool
 *    List(数组):
 *      在Dart中，数组是列表对象，所以大多数称之为列表
 *    Maps(字典):
 *      Map是一个键值对相关对象
 *    不常用类型：
 *      Runes：UTF-32编码的字符串，它可以通过文字转换为符号表情或者代表特定的文字；
 *      Symbols：Symbols对象表示在Dart程序中生命的运算符或标识符，
 */
void main() {
  //1.字符串的定义
  //1.1 var关键字
  var str1 = "aaa";
  //1.2 String关键字
  String str2 = 'bbb';
  //  使用三个单引号可以定义多行的字符串
  String str3 = '''this is
    my app
  ''';
  print(str1);
  print(str2);
  print(str3);

  //字符串的拼接
  String s1 = '你好';
  String s2 = 'Dart';
  print('$s1 $s2');
  print(s1 + s2);
  print('===========================');

  //2.
}
