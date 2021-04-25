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
