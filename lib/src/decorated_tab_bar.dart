import 'package:flutter/material.dart';

class DecoratedTabBar extends StatelessWidget implements PreferredSizeWidget {
  const DecoratedTabBar({Key? key, required this.child, this.decoration})
      : super(key: key);

  final TabBar child;
  final BoxDecoration? decoration;

  @override
  Size get preferredSize => child.preferredSize;

  @override
  Widget build(BuildContext context) {
    return decoration != null
        ? Stack(
            children: [
              Positioned.fill(
                child: Container(decoration: decoration),
              ),
              child,
            ],
          )
        : child;
  }
}
