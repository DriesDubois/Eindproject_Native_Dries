library bibliotheek;

import 'package:eindproject_native_dries/screens/songsList.dart';
import 'package:flutter/material.dart';
import '../screens/animation.dart';
import '../screens/input.dart';
import '../screens/music.dart';
import '../screens/video.dart';

String title = "Top songs";
Color labelColor = Colors.orange;
Color indicatorColor = Colors.orange;

class Menu {
  String title;
  Icon icon;
  Widget widget;
  Menu(this.title, this.icon, this.widget);
}

List<Menu> menu = [
  Menu("Muziek", Icon(Icons.music_note), Muziek()),
  Menu("Lijst", Icon(Icons.list), SongList()),
  Menu("Favorite Video", Icon(Icons.video_file), Video()),
  Menu("Animatie", Icon(Icons.animation), Animatie()),
  Menu("Invoer", Icon(Icons.input), Input())
];
