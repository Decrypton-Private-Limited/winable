
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

class Utils{
  static ValueNotifier<GlobalKey<NavigatorState>> currentNavigator = ValueNotifier(GlobalKey());
  static Duration getDifference(String date){
    DateTime start = DateTime.parse(date);
    DateTime today = DateTime.now();
    Duration diff = start.difference(today);
    return diff;
  }
  static String getDifferenceString(Duration diff){
    if(diff.isNegative) return "";

    if(diff.inDays>0) return "${diff.inDays} days";

    if(diff.inHours>0) return "${diff.inHours} Hrs";

    if(diff.inMinutes>0) return "${diff.inMinutes} Mins";
    return "";
  }
  static String getDifferenceString2(Duration diff,String completed){
    if(diff.isNegative) return completed;

    if(diff.inDays>0) return "${diff.inDays}d:${diff.inHours - 24*diff.inDays}Hr";

    if(diff.inHours>=0) return "${diff.inHours}:${diff.inMinutes - 60*diff.inHours}";

    if(diff.inMinutes>0) return "${diff.inMinutes} Mins";
    return "";
  }

  static String getTimeInFormat(String date,String format) {
    DateTime startDate = DateTime.parse(date);
    return DateFormat(format).format(startDate);
  }


}