// dart：前缀标识 Dart 的标准库，如 dart:io、dart:html
import 'dart:math';

// 当然，也可以使用相对路径活绝对路径的 dart 文件来引用；
//import 'lib/student/student.dart';

// Pub 包管理系统中又和很多功能强大、实用的库，可以使用前缀 package；
//import 'package:args/args.dart';

// 当各个库有命名冲突的时候，可以使用 as 关键字来使用命名空间
// import 'lib/student/student.dart' as Stu;
// Stu.Student s = new Stu.student();
//
//show关键字可以显示某个成员（屏蔽其他）
//hide关键字可以隐藏某个成员（显示其他）
//import 'lib/student/student.dart' show Student, Person;
//
//import 'lib/student/student.dart' hide Person;

// library: 定义这个库的名字
// 但是库的名字并不影响导入，因为 import 语句用的是字符串 Uri
// library person;

/*
* part 和 part of
* 为了维护一个库，我们可以把各个功能放到各个 dart 文件中
* 但 part of 所在文件不能包括 import、library 等关键字；
* 可以包含在 part 关键字所在的文件中
* 建议避免使用 part 和 part of 语句，因为那样会使代码很难阅读，修改， 可以多用 library
* part 加字符串类型 Uri 类似 include ，表示包含某个文件
* part of 加库名表示该文件属于哪个库；
* // math.dart文件开头
library math;
part 'point.dart';
part 'random.dart';

// point.dart文件开头
part of math;

// random.dart文件开头
part of math;
*
* 4、export 关键字导出一个更大的库
* library math;
* export ‘random.dart’;
* export ‘point.dart’;
* 也可以导出部分组合成一个新库
* library math;

export 'random.dart' show Random;
export 'point.dart' hide Sin;
*
* Lazily loading a library（延迟载入库）
Deferred loading (也称之为 lazy loading) 可以让应用在需要的时候再 加载库。 下面是一些使用延迟加载库的场景：

减少 APP 的启动时间。
执行 A/B 测试，例如 尝试各种算法的 不同实现。
加载很少使用的功能，例如可选的屏幕和对话框。
要延迟加载一个库，需要先使用 deferred as 来 导入：

import 'package:deferred/hello.dart' deferred as hello;
当需要使用的时候，使用库标识符调用 loadLibrary() 函数来加载库：

greet() async {
  await hello.loadLibrary();
  hello.printGreeting();
}
*
* 在前面的代码， 使用 await 关键字暂停代码执行一直到库加载完成。 关于 async 和 await 的更多信息请参考 异步支持。

在一个库上你可以多次调用 loadLibrary() 函数。 但是该库只是载入一次。

使用延迟加载库的时候，请注意一下问题：

延迟加载库的常量在导入的时候是不可用的。 只有当库加载完毕的时候，库中常量才可以使用。
在导入文件的时候无法使用延迟库中的类型。 如果你需要使用类型，则考虑把接口类型移动到另外一个库中， 让两个库都分别导入这个接口库。
Dart 隐含的把 loadLibrary() 函数导入到使用 deferred as 的命名空间 中。 loadLibrary() 方法返回一个 Future。

* */

void main() {
/*
* 在 Dart 中，你可以导入一个库来使用他所提供的功能
* 库的使用可以试代码的重用性得到提高，并且可以更好地组合代码
* Dart 中任何文件都是一个库，及时你没有用关键字 library 声明；
* 1、import ：语句用来导入一个库
* 后面跟一个字符串形式的 Uri 啦指定标识要引用的库
* */
}
