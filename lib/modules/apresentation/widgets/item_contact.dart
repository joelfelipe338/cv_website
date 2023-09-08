import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ItemContact extends StatefulWidget {

  final IconData icon;
  final Function()? onClick;

  const ItemContact({Key? key,required this.icon,required this.onClick}) : super(key: key);

  @override
  State<ItemContact> createState() => _ItemContactState();
}

class _ItemContactState extends State<ItemContact> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle
        ),
        child: Icon(
            widget.icon,
          size: 50,
        ),
      ),
    );
  }
}
