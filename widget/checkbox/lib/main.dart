import 'package:checkbox/widget/CustomCheckBox.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
     return CheckBoxWidget();
  }
}

class CheckBoxWidget extends StatefulWidget {
  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
          body:
              Column (
                children: [
                  SizedBox(height: 60.0,),
                  Row(
                    children: [

                      SizedBox(width: 40.0,),

                      CustomCheckBox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(width: 10.0,),

                      Text('여기에 원하는 텍스트 적으세요')

                    ],
                  ),
                ],
              )

        ),
    );
  }
}

