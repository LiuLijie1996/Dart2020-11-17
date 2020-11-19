main(List<String> args) {}

// 如果函数没有显式声明返回值的类型，那么默认会当做 dynamic 处理
// 函数返回值没有类型推断
bool isNoble1(int count) {
  return int == 1;
}

// 对于只包含一个表达式的函数，可以使用箭头函数
bool isNoble2(int count) => int == 1;
