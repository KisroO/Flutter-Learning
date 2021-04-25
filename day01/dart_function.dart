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
