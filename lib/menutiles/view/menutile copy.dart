import 'package:flutter/material.dart';


class MenuTile extends StatefulWidget {
  MenuTile(
      {Key? key,
      required this.dish,
      required this.image,
      required this.price,
      required this.availabilty});
  final String? dish;
  final String? image;
  final double? price;
  final bool? availabilty;

  @override
  State<MenuTile> createState() => _MenuTileState();
}

class _MenuTileState extends State<MenuTile> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListTile(
          title: Text(""),
          leading: CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage('assets/images/hotel1.jpeg'),
          ),
          subtitle: Text('Availability'),
          trailing: Text('160/-'),
        ),
      ),
    );
  }
}
