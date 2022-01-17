import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homework_2/ui/screens/home_screen.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'data/dummy_data.dart';

void main(){
runApp(ScreenUtilInit(
  designSize: Size(393, 804),
  minTextAdapt: true,
  builder: () => MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ),
));
}



