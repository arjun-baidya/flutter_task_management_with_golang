import 'package:flutter/material.dart';
import 'package:flutter_task_management_with_golang/utils/app_colors.dart';
import 'package:flutter_task_management_with_golang/widgets/button_widget.dart';
import 'package:flutter_task_management_with_golang/widgets/textfield_widget.dart';

class AddTask extends StatelessWidget {
  const AddTask({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration:const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/addtask1.jpg")
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 20,),
                IconButton(onPressed: () {},
                 icon: const Icon(Icons.arrow_back,
                 color: Colors.blue,
                 )),
              ],
            ),
            Column(
              children: [
                // here initialize textfield
                TextFieldWidget(
                  textController: nameController,
                  hintText: "Task Name",
                  ),
                  // between textfield and textfield give gap
                  const SizedBox(height: 20,),
                  // initialize another textfield
                  TextFieldWidget(
                  textController: detailController,
                  hintText: "Task Detail",
                  borderRadius: 15,
                  maxLines: 3,
                  ),
                  // between textfield and button give gap
                  const SizedBox(height: 20,),
                  // initialize button
                  ButtonWidget(backgroundcolor: AppColors.mainColor,
                   text: "Add", 
                   textColor: Colors.white,
                   ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/5,),
          ],
        ),
      ),
    );
  }
}