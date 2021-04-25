/**
 * 常量声明
 */
void main() {
  //使用const定义常量
  const PI = 3.14;
  print(PI);

  final E = 2.1;
  print(E);

  // const a = new DateTime.now();  报错
  final b = new DateTime.now(); // 正确用法
}
