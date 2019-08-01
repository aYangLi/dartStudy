import 'start.dart';

//函数别名
//当看到用 typeOf 定义函数别名的时候，不自觉的想到了函数指针
typedef int Add(int a, int b);

int Subtract(int a, int b) => a - b;

// 闭包函数
// 初始化变量的时候，参数对应的是函数的参数 num n；
// 调用函数类型变量的时候，参数对应的是返回值中的参数
Function makeSub(num n) {
  return (num i) => n - i;
}

void main() {
  printNumber(2);

  String sayHello(String name) {
    return 'hello $name';
  }

  sayHello2(name) => 'word ${name}';

  print(sayHello('aa'));
  print(sayHello2('bb'));
  print(Subtract is Function);
  print(Subtract is Add);

  var x = makeSub(5);
  print(x(2));

// dart 中函数也是对象
  var callbacks = [];
  for (var i = 0; i < 3; i++) {
    callbacks.add(() => print('save $i'));
  }
  callbacks.forEach((c) => c());

//  Optional positional parameters（可选位置参数）
//把一些方法的参数放到 [] 中就变成可选 位置参数了：

  String say(String from, String msg, [String device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }

//  下面是不使用可选参数调用上面方法
  print(say('Bob', 'howdy'));
//  下面是使用可选参数调用上面方法
  print(say('bob', 'howdy', 'smoke signal'));
//  default parameter values(默认参数值)
// 在定义方法的是，可以使用 = 来定义可选参数的默认值，默认值只能是编译时常量，如果没有提供默认值，则默认值是null。
// 下面是设置可选参数默认值的示例

  void enableFlags({bool bold = false, bool hidden = false}) {
    print(bold);
    print(hidden);
  }

  ;

  enableFlags(bold: true);

//  Anonymous functions（匿名方法）
//  下面的代码定义了一个参数为i （该参数没有指定类型）的匿名函数。 list 中的每个元素都会调用这个函数来 打印出来，同时来计算了每个元素在 list 中的索引位置。
  var list = ['apple', 'oranges', 'grapes', 'bananas', 'plums'];
  list.forEach((i) {
    print(list.indexOf(i).toString() + ':' + i);
  });
  list.forEach((i) => print(list.indexOf(i).toString() + ': ' + i));
//  Return values（返回值）
//  所有的函数都返回一个值。如果没有指定返回值，则 默认把语句 return null; 作为函数的最后一个语句执行。
}
