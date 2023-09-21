import 'package:flutter/foundation.dart';
class SumFunc extends ChangeNotifier{
  int sum=0;
  int count=0;
  void ValueIncrease(){
    sum+=10;
    count++;
    print("sum is $sum and count is $count");
    notifyListeners();
  }
}