// 级联，当你要对一个单一的对象进行一系列的操作的时候，可以使用级联操作符 ...
class Person {
  String name;
  String country;
  void setCountry(String country) {
    this.country = country;
  }

  String toString() => 'name:$name \nCountry:$country';
}

void main(List<String> args) {
  // 取整 ~/ 操作符之前可能很少看到，代码如下：
  int a = 3;
  int b = 2;
  print(a ~/ b);
  Person p = new Person();
  p
    ..name = 'wang'
    ..setCountry('China');
  print(p);
  // 使用 = 操作符来赋值。但是还有一个 ??= 操作符用来指定值为 null 的变量的值。
  b ??= a;
  // 如果布尔表达式是测试值是否为null，考虑使用 ??
}
