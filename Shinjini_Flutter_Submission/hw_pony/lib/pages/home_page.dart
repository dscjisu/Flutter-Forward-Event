import 'package:flutter/material.dart';
import '../util/hw_pony_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage ({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List Basics = [
    ["Get a glance at everything taught in class" , false],
    ["English Homework" , false],
    ["Chemistry Homework" , false],
    ["Psychology Homework" , false],
    ["Mathematics Homework" , false],
  ];
  // checkbox was tapped
  void checkBoxChanged (bool? value , int index ) {
    setState(() {
      Basics[index][1] = !Basics[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Lets Get Work Done'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: Basics.length,
        itemBuilder: (context, index){
          return HWTasks(
              taskName: Basics[index][0],
              TaskCompleted: Basics[index][1],
              onChanged: (value) => checkBoxChanged(value , index),
          );
        },
      ),
      bottomNavigationBar: Text(
          "Lets Do It!! Fighting"
      ),
    );
  }
}
