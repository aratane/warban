import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

AppBar appBarWidget(BuildContext context) {
  const icon = CupertinoIcons.moon_stars;

  return AppBar(
    leading: const BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        icon: const Icon(icon),
        onPressed: () {},
      ),
    ],
  );
}
