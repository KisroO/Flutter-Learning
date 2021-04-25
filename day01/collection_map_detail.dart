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
