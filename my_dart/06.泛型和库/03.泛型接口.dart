// 接口
abstract class ObjectCache<T, V> {
  // 规定传入的参数类型必须是 T 类型
  getByKey(T key);

  // 规定传入的第一个参数类型必须是 T 类型，第二个参数类型必须是 V 类型
  void setByKey(T key, V value);
}

// 继承接口
class DataCache<T, V> implements ObjectCache<T, V> {
  @override
  getByKey(key) {
    print("$key");
  }

  @override
  void setByKey(key, value) {
    print("$key, $value");
  }
}

void main(List<String> args) {
  // 实例化时，确定数据类型，T对应的是String类型，V对应的是Map类型
  var data1 = DataCache<String, Map>();

  // 报错：不能将参数类型 int 赋值给参数类型 String
  // data1.setByKey(100, {"name": "风扇"});

  // 正确写法
  data1.setByKey("shopItem", {"name": "风扇"});
}
