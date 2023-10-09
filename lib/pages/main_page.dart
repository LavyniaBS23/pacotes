import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pacotes/shared/widgets/custom_drawer.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin{
  late TabController tabController;
  @override
  void initState(){
    super.initState();
    tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Main Page"),
        ),
        drawer: const CustomDrawer(),
        body: TabBarView(
          controller: tabController,
          children: [
            Container(
              color: Colors.blue,
              
            ),
            Container(
              color: Colors.yellow,
              
            ),
            Container(
              color: Colors.red,
              
            ),
            Container(
              color: Colors.green,
              
            ),
            Container(
              color: Colors.orange,
              
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar.badge({0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},
    items: [
      const TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.map, title: 'Discovery'),
      TabItem(icon: Icons.add, title: 'Add'),
      TabItem(icon: Icons.message, title: 'Message'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ],
    onTap: (int i) => tabController.index = i,
    controller: tabController,
  )
      ),
    );
  }
}
