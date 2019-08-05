void main() {
//  StringBuffer 可以特别高效的构建多个字符串
  StringBuffer sb = new StringBuffer();
  sb.write("use a StringBuffer");
  sb.writeAll(['for', 'efficient', 'string', 'creation']);
  sb.write('if you are');

  print(sb.toString());
  sb.clear();
  print(sb);

//  list 常见的添加、索引、删除等方法：
//  使用List 的构造函数，也可以添加 int 函数，表示 List 固定长度
  var vegetables = new List();

//  或者简单的用 List 来赋值
  var fruits = ['aplles', 'oranges'];
  List play = ['aa', 'bb'];
//  添加元素
  fruits.add('kiwis');

//  添加多个元素
  fruits.addAll(['grapes', 'bananas']);

//  获取list的长度
  print(play.length);

//  利用索引获取元素
  print(fruits[0]);

//  查找某个元素的索引号
  print(fruits.indexOf('bananas'));

//  利用索引号删除某个元素
  fruits.removeAt(fruits.indexOf('oranges'));
  print(fruits);

//  删除所有的元素；
  fruits.clear();
  print(fruits);

// Set:集合在dart中无序，并且每个元素具有唯一性
// 因为是无序的，因此不能像 list 那样用索引来访问元素
  var ingredients = new Set();
  ingredients.addAll(['gold', 'titanium', 'xenon']);
  print(ingredients);

//  添加已经存在的元素；
  ingredients.add('gold');
  print(ingredients.length);

//  删除元素
  ingredients.remove('gold');
  print(ingredients.length);

//  检查在 Set 中是否包含某个元素
  print(ingredients.contains('xenon'));

  // 检查在Set中是否包含多个元素
  assert(ingredients.containsAll(['titanium', 'xenon']));
  ingredients.addAll(['gold', 'titanium', 'xenon']);

//  获取两个集合的交集
  var nobleGases = new Set.from(['xenon', 'argon']);
  var intersection = ingredients.intersection(nobleGases);
  print(intersection);

//  检查一个 Set 是否是另一个 Set 的子集
  var allElements = [
    'hydrogen',
    'helium',
    'lithium',
    'beryllium',
    'gold',
    'titanium',
    'xenon'
  ];
  print(allElements.contains(nobleGases));

// map: 映射，也有称之为字典；map 是一个无序的键值对容器
// map 的声明：
  var hawaiianBeaches = {
    'oahu': ['waikiki', 'kailua', 'waimanalo'],
    'big island': ['wailea bay', 'pololu beach'],
    'kauai': ['hanalei', 'poipu']
  };
  var searchTerms = new Map();

//  指定键值对的参数类型
  var nobleMap = new Map<int, String>();
  // Map的赋值，中括号中是Key，这里可不是数组
  nobleMap[54] = 'dart';

//  map 中的键值对是唯一的
//  和 set 不同，第二次输入的 Key 如果存在，Value 会覆盖之前的数据

//  检索 Map 是否含有某些 Key；
  print(nobleMap.containsKey(54));

//  删除某个键值对
  nobleMap.remove(54);
  print(nobleMap.containsKey(54));

// 你可以用foreach来遍历数据，但记住它是无序的
  hawaiianBeaches.forEach((k, v) {
    print('I want to visit $k and swim at $v');
  });

//  putIfAbsent 函数，通过 key 来查找 Value
//  当某个 Key 不存在的时候，会执行第二参数的 Function来添加 Value；
  var teamAssignments = {};
  teamAssignments.putIfAbsent('Catcher', () => 'Catcher'.length);
}
