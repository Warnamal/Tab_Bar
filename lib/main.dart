import 'package:flutter/material.dart';
import 'package:tbar/tabs/first_tab.dart';
import 'package:tbar/tabs/second_tab.dart';
import 'package:tbar/tabs/third_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBarPage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});
  // required List<Tab> tabs

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'T A B  B A R',
            ),
          ),
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),

                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),

                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(children: [
                
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
