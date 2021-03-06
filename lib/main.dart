import 'package:flutter/material.dart';
import 'package:flutter_task_management_with_golang/controllers/data_controller.dart';
import 'package:flutter_task_management_with_golang/screens/add_task.dart';
import 'package:flutter_task_management_with_golang/screens/all_tasks.dart';
import 'package:flutter_task_management_with_golang/screens/home_screen.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // backend part
  loadData()async{
    await Get.find<DataController>().getData();
  }
  // backend part end

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // from data controller for get data and backend connection
    Get.lazyPut(()=>DataController());
    loadData();
    // end backend connection part
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      // home: const AddTask(),
      // home: const AllTasks(),
    );
  }
}
