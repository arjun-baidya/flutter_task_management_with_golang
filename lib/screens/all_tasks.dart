import 'package:flutter/material.dart';
import 'package:flutter_task_management_with_golang/utils/app_colors.dart';
import 'package:flutter_task_management_with_golang/widgets/button_widget.dart';
import 'package:flutter_task_management_with_golang/widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List MyData = [
      "Try harder",
       "Try smarter"
       ];

      //  left edit scrole button make
    final leftEditIcon = Container(
      margin:const EdgeInsets.only(bottom: 20),
      color: const Color(0xFF2e3253),
      child:const Icon(
        Icons.edit,
        color: Colors.white,
      ),
      alignment: Alignment.centerLeft,
    );
    // right delete button make
    final rightDeleteIcon = Container(
      margin: const EdgeInsets.only(bottom: 20),
      color: Colors.redAccent,
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
      alignment: Alignment.centerRight,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 40, top: 20),
            alignment: Alignment.topLeft,
            child: const Icon(
              Icons.arrow_back,
              color: Colors.blue,
            ),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage("assets/header1.jpg")),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                const Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 18,
                  ),
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                // gap between two section
                Expanded(
                  child: Container(),
                ),
                const Icon(
                  Icons.calendar_month_sharp,
                  color: Colors.blue,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "2",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Flexible(
            child: ListView.builder(
                itemCount: MyData.length,
                itemBuilder: (context, index) {
                  // return Dismissible use for delete item
                  return Dismissible(
                    background: leftEditIcon,
                    secondaryBackground: rightDeleteIcon,
                    onDismissed: (DismissDirection direction) {
                      
                    },
                    confirmDismiss: (DismissDirection direction)async {
                      if(direction == DismissDirection.startToEnd){
                        showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          barrierColor: Colors.transparent,
                        context: context,
                         builder: (_){
                           return Container(
                             height: 550,
                             padding: const EdgeInsets.only(left: 20, right: 20),
                             child:Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 ButtonWidget(backgroundcolor: AppColors.mainColor, text: "View", textColor: Colors.white),
                                 const SizedBox(height: 20,),
                                 ButtonWidget(backgroundcolor: AppColors.mainColor, text: "Edit", textColor: Colors.white),
                               ],
                             ),
                           );
                         }
                         );
                        return false;
                    }else{
                      return Future.delayed(const Duration(seconds: 1),()=>(direction==DismissDirection.endToStart));
                    }
                    },

                    key: ObjectKey(index),
                    child: Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 20),
                      child: TaskWidget(
                        text: MyData[index],
                        color: Colors.black,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
