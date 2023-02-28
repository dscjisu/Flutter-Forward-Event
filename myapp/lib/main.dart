import 'package:flutter/material.dart';

main(){
  runApp(mainPage());
}

class mainPage extends StatefulWidget {
  mainPage({Key? key}) : super(key: key);


  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  String msg = "Hey, Welcome to the club";
  int curInd = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),

      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text("GDSC JIS UNIVERSITY"),
        ),
        body: Center(
          child: curInd == 0 ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Hey,🙋‍♂️ welcome to our club",style: TextStyle(fontSize: 20),),
              )
            ],
          )
          : Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0lun3EXh3dlH4dqvnU-Ohuz-Ik0OESTBCxzMWIGa6Ensn1pgvFHc3mFrSpmE-ZBsy9_8&usqp=CAU")
        ),
          bottomNavigationBar: BottomNavigationBar(items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label:"Home",activeIcon: Icon(Icons.home)),
            BottomNavigationBarItem(icon: Icon(Icons.file_copy_outlined),label:"Files",activeIcon: Icon(Icons.file_copy)),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label:"My account",activeIcon: Icon(Icons.account_circle)),
          ],
            currentIndex: curInd,
            onTap:(int Index){
            setState(() {
              curInd = Index;
            });
            },
          ),
      )
    );
  }
}
