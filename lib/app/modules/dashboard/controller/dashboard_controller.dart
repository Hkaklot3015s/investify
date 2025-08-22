import 'package:get/get.dart';
import 'package:investify/Resourcess/Databasehelper.dart';

class DashboardController extends GetxController {
  Future<List>? getalldata;

  Future<List> viewdata() async
  {
    Databasehelper obj = Databasehelper();
    var data =  obj.getalldata();
    getalldata = data;
    return data;
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    viewdata();
  }
}