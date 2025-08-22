import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:investify/EditHomeScreen.dart';
import 'package:investify/HomeScreen.dart';
import 'package:investify/MyBalance.dart';
import 'package:investify/Resourcess/Databasehelper.dart';
import 'package:investify/app/modules/dashboard/controller/dashboard_controller.dart';
import 'package:investify/app/widgets/app/app_name.dart';
import 'package:investify/app/widgets/common/In_loading_circle.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DashboardController controller = Get.put(DashboardController());
    return Scaffold(
      appBar: AppBar(
        title: AppName(),
        actions: [
          IconButton(
            onPressed: () => Get.to(MyBalance()),
            icon: Icon(Icons.account_balance_wallet),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()  => Get.to(HomeScreen()),
        label: Text("Add"),
        icon: Icon(Icons.add),
      ),
      body: FutureBuilder(
        future: controller.getalldata,
        builder: (context, snapshot) {

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const InLoadingCircle();
          }



          if (snapshot.hasData) {
            if (snapshot.data!.length <= 0) {
              return Center(child: Text("NO data"));
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      snapshot.data![index]["title"].toString(),
                      style: TextStyle(fontSize: 25),
                    ),
                    subtitle: Text(snapshot.data![index]["type"].toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Rs. " + snapshot.data![index]["amount"].toString(),
                          style: TextStyle(fontSize: 15),
                        ),
                        IconButton(
                          onPressed: () {
                            var id = snapshot.data![index]["Tid"].toString();

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    EditHomeScreen(updateid: id),
                              ),
                            );
                          },
                          icon: Icon(Icons.edit, color: Colors.green),
                          tooltip: "Edit",
                        ),
                        SizedBox(height: 30.0),
                        IconButton(
                          onPressed: () async {
                            var id = snapshot.data![index]["Tid"].toString();

                            Databasehelper obj = new Databasehelper();
                            var status = await obj.deletetrackor(id);
                            if (status == 1) {
                              controller.getalldata = controller.viewdata();
                            } else {
                              var snackbar = SnackBar(
                                content: Text("Data Not Delete"),
                              );
                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(snackbar);
                            }
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                          tooltip: "delete",
                        ),
                      ],
                    ),
                  );
                },
              );
            }
          } else {
            return Center(child: Text("Loading."));
          }
        },
      ),
    );
  }
}
