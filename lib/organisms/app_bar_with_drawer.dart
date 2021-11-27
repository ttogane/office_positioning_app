import 'package:flutter/material.dart';

class AppBarWithDrawer extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWithDrawer({
    Key? key,
    required this.icon,
    this.title,
    this.backgroundColor,
  }) : super(key: key);

  final Icon icon;
  final String? title;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Builder(
          builder: (context) => Row(
            children: [
              IconButton(
                icon: icon,
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
              if (title != null) ...[
                Text(title!),
              ],
            ],
          ),
        ),
      ),
      backgroundColor: backgroundColor ?? Colors.blue,
      elevation: 0,
      centerTitle: false,
      titleSpacing: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
