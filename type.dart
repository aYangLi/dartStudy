void main(List<String> args) {
  // dart 语言本质上是hi动态类型语言，类型是可选的。
  //  可以使用 var 声明变量，也可以使用类型来声明变量；
  // 一个变量也可以被富裕不同类型的对象；
  // 字符串复制的时候，可以使用单引号，也可以使用高双引号
  var str1 = 'ok?';
  String str2 = "it is ok";

  // 如果使用三个单引号或者双引号，可以多行字符串赋值

  String str3 = ''' str 3
  is str 3''';

  // assert 是语言内置的断言函数，仅在检查模式下有效
  // 如果断言失败则程序立刻终止；
  assert(str1 == 'ok?');

  // dart 中字符串不支持‘+’操作符，如：str1 + str1(新版本sdk 已经支持 + 操作字符串连接)
  // 如果要链接字符串，除了上面诉说，乡里你字符串自动链接外
  // 还可以使用$插入变量的值
  print('name:$str2');
  print("name" + 'name1');
  print('nameTow:${str3}');

  // 声明原始字符串，直接在字符串前增加字符r
  // 可以避免 \ 的转义作用，在正则里面特别有用；
  print(r'换行符：\n');

  //Dart中数值是num，它有两个子类型：int 和 double
  //int是任意长度的整数，double是双精度浮点数
  var hex = 0xDEADBEEF;

  //翻了半天的文档，才找打一个重要的函数：转换进制，英文太不过关了
  //上面提到的字符串插值，还可以插入表达式：${}
  print("整型转换为16进制：$hex —> 0x${hex.toRadixString(16).toUpperCase()}");
  //在声明变量时，除了 var，还可以使用 const 和 final
//  同时，在使用 const 和 final 的时候， 可以省略 var 或者其他类型；
  var a = 10;
  const b = 10;
  final c = 10;

  int a1 = 10;
  const int b1 = 10;
  final int c1 = 10;
  // const 和 final定义的搜狐常亮，值不能改变
//并且在声明的时候就必须初始化
//差别如下：
// const 定义的是编译时常量，只能用编译时常量来初始化
// final 定义的常量可以用变量来初始化
/*
* var、final 等在左边定义避难量的饿时候，并不关心右边是不是常量
* 但是如果右边用了 const，那么不管左边如何，右边都必须是常量；
* */

// 可以在 字符串中使用过表达式，用法是这样的：${expression} 。 如果表达式是一个比赛服，可以省略{}。如果表达式的结果为一个对象，则 dart 会调用对象的 toString() 函数来获取一个字符串。
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, ' +
          'which is very handy.');
  assert('That deserves all caps. ' +
      '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. ' +
          'STRING INTERPOLATION is very handy!');
//  通过提供一个 r 前缀可以创建一个‘原始 raw’ 字符串：
  var s1 = r"in a raw string, even \n isn't special";
  print('s1=$s1');
  var s2 = "in a raw string, even \n isn't special";
  print('s1=$s2');

  const aConstList = const [1, 2, 3];
  print(aConstList);

  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(new String.fromCharCodes(input));
}
