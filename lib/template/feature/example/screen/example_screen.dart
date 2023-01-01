import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appName/feature/example/controller/example_controller.dart';
import 'package:appName/widget/loading_widget.dart';
import 'package:appName/widget/show_snackbar.dart';

class ExampleScreen extends StatelessWidget {
  final ExampleScreen? args;

  const ExampleScreen({Key? key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExampleController>(
      builder: (exampleController) {
        return Container(
          color: Theme.of(context).primaryColor,
          child: SafeArea(
            child: Scaffold(
                appBar: AppBar(title: const Text("Example Screen")),
                body: Obx(() {
                  return Stack(
                    children: [
                      if (exampleController.exampleData.isNotEmpty)
                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: exampleController.exampleData.map<Widget>((user) {
                              return Card(
                                child: ListTile(
                                  onTap: () {
                                    showSnackbar(
                                      title: "Example Data",
                                      message: "${user.firstName}, ${user.lastName}"
                                    );
                                  },
                                  leading: CircleAvatar(
                                    backgroundImage: NetworkImage(user.avatar),
                                  ),
                                  title: Text(user.firstName),
                                  subtitle: Text(user.email),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      /*if (exampleController.exampleData.isEmpty)
                        const Center(child: Text("Data is Empty", style: TextStyle(fontSize: 20),)),*/
                      if (exampleController.isLoading.value)
                        const LoadingWidget(),
                    ],
                  );
                })),
          ),
        );
      }
    );
  }
}
