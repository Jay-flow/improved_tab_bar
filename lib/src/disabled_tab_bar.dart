import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DisabledTabBar extends StatefulWidget {
  const DisabledTabBar({
    Key? key,
    required this.tabs,
    required this.length,
    this.controller,
    this.isScrollable = false,
    this.padding,
    this.indicatorColor,
    this.automaticIndicatorColorAdjustment = true,
    this.indicatorWeight = 2.0,
    this.indicatorPadding = EdgeInsets.zero,
    this.indicator,
    this.indicatorSize,
    this.labelColor,
    this.labelStyle,
    this.labelPadding,
    this.unselectedLabelColor,
    this.unselectedLabelStyle,
    this.dragStartBehavior = DragStartBehavior.start,
    this.overlayColor,
    this.mouseCursor,
    this.enableFeedback,
    this.onTap,
    this.physics,
  }) : super(key: key);

  final List<Widget> tabs;
  final int length;
  final TabController? controller;
  final bool isScrollable;
  final EdgeInsetsGeometry? padding;
  final Color? indicatorColor;
  final bool automaticIndicatorColorAdjustment;
  final double indicatorWeight;
  final EdgeInsetsGeometry indicatorPadding;
  final Decoration? indicator;
  final TabBarIndicatorSize? indicatorSize;
  final Color? labelColor;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? labelPadding;
  final Color? unselectedLabelColor;
  final TextStyle? unselectedLabelStyle;
  final DragStartBehavior dragStartBehavior;
  final MaterialStateProperty<Color?>? overlayColor;
  final MouseCursor? mouseCursor;
  final bool? enableFeedback;
  final void Function(int)? onTap;
  final ScrollPhysics? physics;

  @override
  State<DisabledTabBar> createState() => _DisabledTabBarState();
}

class _DisabledTabBarState extends State<DisabledTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = widget.controller ??
        TabController(
          vsync: this,
          length: widget.length,
        );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _onTab(int index) {
    if (widget.onTap != null) {
      widget.onTap!(index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: widget.tabs,
      controller: widget.controller,
      isScrollable: widget.isScrollable,
      padding: widget.padding,
      indicatorColor: widget.indicatorColor,
      automaticIndicatorColorAdjustment:
          widget.automaticIndicatorColorAdjustment,
      indicatorWeight: widget.indicatorWeight,
      indicatorPadding: widget.indicatorPadding,
      indicator: widget.indicator,
      indicatorSize: widget.indicatorSize,
      labelColor: widget.labelColor,
      labelStyle: widget.labelStyle,
      labelPadding: widget.labelPadding,
      unselectedLabelColor: widget.unselectedLabelColor,
      unselectedLabelStyle: widget.unselectedLabelStyle,
      dragStartBehavior: widget.dragStartBehavior,
      overlayColor: widget.overlayColor,
      mouseCursor: widget.mouseCursor,
      enableFeedback: widget.enableFeedback,
      onTap: _onTab,
      physics: widget.physics,
    );
  }
}
