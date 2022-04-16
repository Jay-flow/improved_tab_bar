import 'package:flutter/material.dart';
import 'package:improved_tab_bar_demo/screens/decorated_tab_bar_screen.dart';
import 'package:improved_tab_bar_demo/themes.dart';

void main() {
  runApp(const ImprovedTabBarExample());
}

class ImprovedTabBarExample extends StatelessWidget {
  const ImprovedTabBarExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Improved tab bar demo',
      theme: Themes.light,
      darkTheme: Themes.dark,
      home: const DecoratedTabBarScreen(),
    );
  }
}
