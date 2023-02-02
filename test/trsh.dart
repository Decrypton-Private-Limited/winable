
import '../lib/src/util/helper.dart';

void main(){
  print(Helper.getData({"data":"by"},key: "data"));
  print(Helper.getData({"data":"by"},key: "dat"));
  print(Helper.getData(null));
}