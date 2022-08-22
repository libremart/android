import 'package:auto_route/auto_route.dart';
import 'package:libremart/theme/constants.dart';
import 'package:flutter/material.dart';

enum MenuValues {
  settings,
}

final List<Widget> browseAppBarActions = [
  PopupMenuButton<MenuValues>(
    onSelected: (value) {
      switch (value) {
        case MenuValues.settings:
          // context.router.push(const AppRoute());
          break;
      }
    },
    itemBuilder: (BuildContext context) => [
      const PopupMenuItem(
        value: MenuValues.settings,
        child: Text('Settings'),
      ),
      const PopupMenuItem(
        value: MenuValues.settings,
        child: Text('wow2'),
      ),
    ],
    icon: const Icon(
      Icons.more_vert,
    ),
  ),
];

final List<Widget> installedAppBarActions = [
  IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.hide_image_sharp,
    ),
  ),
  IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.hide_image_sharp,
    ),
  ),
];

final List<Widget> updatesAppBarActions = [
  IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.tram_sharp,
    ),
  ),
  IconButton(
    onPressed: () {},
    icon: const Icon(
      Icons.hide_image_sharp,
    ),
  ),
];

List<Widget>? chooseActions({required TabsRouter tabsRouter}) {
  List<Widget>? appBarActions = [];
  if (tabsRouter.current.path == kStringsRoutesBrowse) {
    appBarActions = browseAppBarActions;
    return appBarActions;
  } else if (tabsRouter.current.path == kStringsRoutesInstalled) {
    appBarActions = installedAppBarActions;
    return appBarActions;
  } else if (tabsRouter.current.path == kStringsRoutesUpdates) {
    appBarActions = updatesAppBarActions;
    return appBarActions;
  }
  return null;
}

// void choiceAction(PopupMenuItemSelected value) {
//   switch (value) {
//     case MenuValues.settings:
//       break;
//   }

