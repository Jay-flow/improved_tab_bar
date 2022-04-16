import 'package:flutter/material.dart';
import 'package:improved_tab_bar/improved_tab_bar.dart';

class DecoratedTabBarScreen extends StatefulWidget {
  const DecoratedTabBarScreen({Key? key}) : super(key: key);

  @override
  State<DecoratedTabBarScreen> createState() => _DecoratedTabBarScreenState();
}

class _DecoratedTabBarScreenState extends State<DecoratedTabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decorated Tab Bar'),
      ),
      body: const DefaultTabController(
        length: 3,
        child: DecoratedTabBar(
          child: TabBar(
            tabs: [
              Tab(text: "tab1"),
              Tab(text: "teb2"),
              Tab(text: "tab3"),
            ],
          ),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
