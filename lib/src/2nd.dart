import 'package:flutter/material.dart';
import 'package:hello/src/3rd.dart';
import 'package:hello/src/4th.dart';
import 'package:hello/src/5th.dart';
import 'package:hello/src/6x.dart';

class Two extends StatefulWidget {
  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Whatsup'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        ],
        leading: Icon(Icons.account_circle),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Chats'),
            Tab(text: 'Updates'),
            Tab(text: 'Calls'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Third(),
          Four(),
          Six(),
        ],
      ),
    );
  }
}
