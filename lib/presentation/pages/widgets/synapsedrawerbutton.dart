import 'package:badges/badges.dart' as bd;
import 'package:flutter/material.dart';
import 'package:synapserx_v2/common/service.dart';

class DrawerButton extends StatefulWidget {
  const DrawerButton({super.key});

  @override
  State<DrawerButton> createState() => _DrawerButtonState();
}

class _DrawerButtonState extends State<DrawerButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GlobalData().isDefaultAccountSet
        ? IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(Icons.menu))
        : bd.Badge(
            badgeContent: const Text(''),
            position: bd.BadgePosition.topEnd(top: 5, end: 15),
            child: IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: const Icon(Icons.menu)));
  }
}
