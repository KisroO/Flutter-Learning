/**
 * Dart运算符
 *    算数运算符
 *        +  -  *  /  ~/（取整）   %（取余）
 *    关系运算符
 *        ==  !=  >  <  >=  <=
 *    逻辑运算符
 *        !   &&   ||
 *    赋值运算符
 *        基础赋值运算符   =     ??=
 *        符合赋值运算符  +=   -=  *=  /=  %=  ~/=
 * 
 *    条件表达式
 *        
 */
void main() {
  //  ??=  表示变量为空的话，就把等号后面的值赋给变量
  // int a;
  // a ??= 100;

  //switch语句
  var s = '男';
  switch (s) {
    case '男':
      print('男');
      break;
    case '女':
      print('女');
      break;
    default:
      break;
  }
  print('=============');
  //三目运算符
  bool flag = true;
  String c = flag ? 'true' : 'false';
  print(c);

  //  ??运算符
  var a;
  var b = a ?? 10; //若a不为空，则将a赋给b，为空则将10赋值给b
  print(b);
}
