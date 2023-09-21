import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzles/components/values.dart';
import 'package:quizzles/src/app_root.dart';
void main(){
  runApp(ChangeNotifierProvider(create: (context)=>SumFunc(),
      child: AppRoot()));
}