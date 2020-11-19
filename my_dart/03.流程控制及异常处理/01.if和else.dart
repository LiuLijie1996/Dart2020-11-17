/*
  流程控制在大部分编程语言中都大同小异，在dart中只有最后一个assert比较特殊
  if和else
  for循环
  while和do-while循环
    while：先判断，后执行
    do while：先执行，后判断

  break和continue
    break：中断整个循环
    continue：跳过当前循环，继续执行下一个循环

  switch和case

  assert
    类型断言，当判断结果返回false时抛出错误

  与 js 不同的是，条件判断必须是布尔值
*/

main(List<String> args) {
  bool isShow = true;
  bool isHime = false;

  if (isShow) {
    print('显示了');
  } else if (isHime) {
    print('消失了');
  } else {
    print('不知道');
  }
}
