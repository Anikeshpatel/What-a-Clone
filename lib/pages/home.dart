import 'package:design/fragments/chats.dart';
import 'package:design/theme/colors.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController tabController;
  IconData fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 4)
      ..addListener(() {
        setState(() {
          switch(tabController.index) {
            case 0:
              break;
            case 1:
              fabIcon = Icons.message;
              break;
            case 2:
              fabIcon = Icons.camera_enhance;
              break;
            case 3:
              fabIcon = Icons.call;
              break;
          }
        });
      });

    tabController.index = 1;
  }

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    double yourWidth = width  / 5;

    return Scaffold(
      appBar: AppBar(
        title: Text("Loverz"),
        backgroundColor: primaryColor,
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.search),
            onTap: () {},
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            child: Icon(Icons.more_vert),
            onTap: () {},
          ),
          SizedBox(
            width: 5,
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorPadding: EdgeInsets.all(0),
          isScrollable: true,
          controller: tabController,
          tabs: <Widget>[
            Container(
              width: 20,
              height: 50,
              alignment: Alignment.center,
              child: Icon(
                Icons.camera_alt,
              ),
            ),
            Container(
                width: yourWidth,
                height: 50,
                alignment: Alignment.center,
                child: Text("CHATS")),
            Container(
                width: yourWidth,
                height: 50,
                alignment: Alignment.center,
                child: Text("STATUS")),
            Container(
                width: yourWidth,
                height: 50,
                alignment: Alignment.center,
                child: Text("CALL"))
          ],
        )
      ),
      body: TabBarView(children: [
        Text("Camera"),
        Chats(),
        Text("Status"),
        Text("Calls"),
      ], controller: tabController,),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          tabController.index = 3;
        },
        child: Icon(fabIcon, color: Colors.white,),
        backgroundColor: accentColor,
      ),
    );
  }
}
