import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtention on num {
  SizedBox get wb => SizedBox(width: w);

  SizedBox get hb => SizedBox(height: h);

  EdgeInsets get all => EdgeInsets.all(toDouble());

  EdgeInsets get top => EdgeInsets.only(top: toDouble());

  EdgeInsets get bottom => EdgeInsets.only(bottom: toDouble());

  EdgeInsets get left => EdgeInsets.only(left: toDouble());

  EdgeInsets get right => EdgeInsets.only(right: toDouble());

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble());

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble());
}
