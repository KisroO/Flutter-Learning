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
