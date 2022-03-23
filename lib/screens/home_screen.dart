import 'package:flutter/material.dart';
import 'package:flutter_task_management_with_golang/utils/app_colors.dart';
import 'package:flutter_task_management_with_golang/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: "HELLO",
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "\n Start your beautiful day",
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            //  between text and button give gap
            SizedBox(height: MediaQuery.of(context).size.height/1.8,),

            // here initialize button
            ButtonWidget(backgroundcolor: AppColors.mainColor,
             text: "Add Task",
              textColor: Colors.greenAccent,
              ),
              // between button and button give gap
              const SizedBox(height:20),
              // initialize another button
            ButtonWidget(
              backgroundcolor: Colors.white,
              text: "View All",
              textColor: Colors.black,
            ),
          ],
        ),
         decoration:const BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage("assets/welcome.jpg")
           )
         ),
      ),
    );
  }
}