library kappbar;

import 'package:flutter/material.dart';

class MyAppBar extends PreferredSize {
  final title;
  final double height;

  final List<Widget> actions;
  final bool centerTitle;

  MyAppBar({this.title, this.height = 55.0, this.actions, this.centerTitle = true});

  @override
  Size get preferredSize {
    return Size.fromHeight(height);
  }

  @override
  Widget build(BuildContext context) {
    var titleStyle = new TextStyle(fontSize: 20.0, color: Colors.white);

    Widget _title;
    if (title is Text) {
      _title = new Text(
        title.data,
        style: titleStyle,
      );
    } else if (title is Widget) {
      _title = title;
    } else if (title == null) {
      _title = null;
    } else {
      _title = Text(
        title.toString(),
        style: titleStyle,
      );
    }

    return AppBar(
      title: _title,
      actions: actions,
      centerTitle: centerTitle,
    );
  }
}
