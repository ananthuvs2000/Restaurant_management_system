import 'package:flutter/material.dart';
import 'package:myproject/homepage/widgets/drawer.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: DrawerCustomer(),
      tileColor: Colors.blue,
    );
  }
}