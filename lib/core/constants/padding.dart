import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PagePadding extends EdgeInsets {
  PagePadding.all() : super.all(32.0);
  PagePadding.heading() : super.only(left: 32, top: 32, right: 32, bottom: 16);
  PagePadding.stack() : super.only(left: 32, right: 32);
  PagePadding.card()
      : super.all(8.0);
  PagePadding.cardColumn() : super.all(16.0);
  
}
