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
