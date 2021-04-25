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
