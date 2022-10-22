import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetRadius extends BorderRadius {
  WidgetRadius.circleAvatar() : super.circular(30);
  WidgetRadius.textField() : super.circular(10);
  WidgetRadius.imageCircular() : super.circular(30);
  WidgetRadius.card() : super.circular(30);
  WidgetRadius.floatingButton() : super.circular(15);
}
