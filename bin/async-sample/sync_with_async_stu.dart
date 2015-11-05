import "dart:async";
/**
 * 这个程序同时使用在main中使用了async 和await来强制stu3后stu6后面的语句必须等到stu3和stu6执行完
 * 后才能执行。因此有成了*同步*模式
 */
main() async{
  stu0();
  stu1();
  stu2();
  stu6();
  await stu3();
  stu4();
  stu5();
  stu7();
  stu8();
  stu9();
  stu10();
}

void stu1() => print("stu1 done");

void stu2() => print("stu2 done");

void stu4() => print("stu4 done");

void stu5() => print("stu5 done");

void stu7() => print("stu7 done");

void stu8() => print("stu8 done");

void stu9() => print("stu9 done");

void stu10() => print("stu10 done");

Future stu0() async{
  int aNum = await stu0_recharge();
  print("stu0 done,recharge:" + aNum.toString());
}

Future stu3() async{
  int aNum = await stu3_recharge();
  print("stu3 done,recharge:" + aNum.toString());
}

Future stu6() async{
  int aDouble = await stu6_recharge();
  print("stu6 done,recharge:"+ aDouble.toString());
}

Future<int> stu3_recharge() async {
  int aNum;
  for (int i = 0;i < 10;i++) {
    aNum = i;
  }
  return aNum;
}

 stu6_recharge()async{
  int balance;
  for (int i = 0;i < 70;i++) {
    balance = i;
  }
  return balance;
}
Future<int> stu0_recharge() async{
  int aNum;
  for (int i = 0;i < 11000000;i++){
    aNum = i;
  }
  return aNum;
}