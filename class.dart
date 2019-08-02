// dart 是一门实用类和单继承的面向对象语言
// 所有的对象都是类的实例，并且所有的类都是 object 的子类 ；
// 1、定义：
// 类的定义用 class 关键字
// 如果未显示定义狗欧早函数，会默认一个空的构造函数；
// 实用 new 关键字和构造函数来创建对象；

class Point {
  num x;
  num y;
  num z;
}

// 2、构造函数
// 如果只是简单的参数传递，可以在构造函数的参数前加 this 关键字定义，或者参数后加 ：再赋值；

class PointTwo {
  num x;

  num y;
  num z;

  PointTwo(this.x, this.y, z) {
    // 第一个值传递给 this.x, 第二个值传递给 this.y;
    this.z = z;
  }

// 命名构造函数，格式为 class.name(var param); 使用冒号初始化变量
  PointTwo.formList(var list)
      : x = list[0],
        y = list[1],
        z = list[2] {}

// 上面还可以简写为
// PointTow.formList(var list):this(list[0], list[1], list[2]);
  String toString() => 'x:$x y:$y z:$z';
}

// 如果你要创建一个不可变的对象，你可以定义编译时常量对象
// 需要在构造函数前加 const；

class ImmutablePoint {
  final num x;
  final num y;

  const ImmutablePoint(this.x, this.y); // 常量构造函数
  static final ImmutablePoint origin =
      const ImmutablePoint(9, 0); // 创建一个常量对象不能用 new，要用 const
}

// 3. Getters And Setters
// Getter and Setter 是用来读写一个对象属性的方法
// 每个字段都对应一个隐式的 Getter 和 Setter
// 但是调用的时候是 obj.x, 而不是 obj.x();

// 可以使用 get 和 set 关键字拓展功能
// 如果字段为 final 或者 const 的话，那么他只有一个 getter 方法

class Rectangle {
  num left;
  num top;
  num width;
  num height;

  Rectangle(this.left, this.top, this.width, this.height);

// right 和 bottom 两个属性的计算方法
  num get right => left + width;

  set right(num value) => left = value - width;

  num get bottom => top + height;

  set bottom(num value) => top = value - height;
}

// 4. 抽象类
// 在 dart 中雷和接口是统一的，类就是接口
// 如果你想重写部分功能，那么你可以继承一个类
// 如果你想实现某些功能，那么你也可以实现一个类
// 使用 abstract 关键字来定义抽象类，并且抽象类不能被实例化
// 抽象方法不需要关键字，直接以分号；结束即可

// 定义一个 shape 类/接口
abstract class Shape {
  num perimeter(); // 这是一个抽象方法，不需要 abstract 关键字，是隐式接口的一部分了。
}

class RectangleTwo implements Shape {
  // RectangleTwo 实现了 Shape 接口
  final num height, width;

  RectangleTwo(num this.height, num this.width); // 紧凑的构造函数语法
  num perimeter() => 2 * height + 2 * width; // 实现了 Shape 接口要求的 perimeter 方法；
}

class Square extends RectangleTwo {
  // Square 继承 RectangleTwo
  Square(num size) : super(size, size); // 调用超类的构造函数
}

// 工厂构造函数
// factory 单独拿出来，因为这不仅仅是构造函数，而是一种模式
// 有时候为了返回一个之前已经创建的川村对象，原始的构造方法已经不能满足需求
// 那么可以使用工厂模式来定义构造函数；
// 并且用关键字 new 来获取之前已经创建的缓存对象

class Logger {
  final String name;
  bool mute = false;

// 变量钱加下划线标识私有属性
  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = new Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);

  void log(String msg) {
    if (!mute) {
      print(msg);
    }
  }
}

void main() {
  var point = new Point();
  print(point.hashCode); //未定义父类的时候，默认继承自Object
  PointTwo p1 = new PointTwo(1, 2, 3);
  print(p1);

  var p2 = new PointTwo.formList([3, 4, 5]);
  print(p1);
  print(p2);

  var rect = new Rectangle(3, 4, 20, 15);
  print(rect.left);
  rect.right = 12;
  print(rect.left);

  var logger = new Logger('UI');
  logger.log('Button clicked');

  print(logger.name);

  var loggerTwo = new Logger('UI TWO');

  print(loggerTwo.name);
}
