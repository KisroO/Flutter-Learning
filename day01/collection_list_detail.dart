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
