import 'package:flutter/material.dart';

class Item {
  final String title;
  final IconData icon;

  Item(this.title, this.icon);
}

buildmenu(Item item) {
  return ListTile(
    minLeadingWidth: 20,
    leading: Icon(item.icon),
    title: Text(item.title),
    onTap: (() {}),
  );
}
