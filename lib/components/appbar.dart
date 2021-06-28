import 'package:flutter/material.dart';
import 'package:technewz/utils/colors.dart';
import 'package:technewz/utils/text.dart';

class appbar extends StatelessWidget implements PreferredSizeWidget {
  appbar({Key? key})
      : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        ],
      backgroundColor: AppColors.black,
      elevation: 0,
      title: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boldText(text: 'Tech', size: 20, color: AppColors.primary),
              modifiedText(text: 'Newz', size: 20, color: AppColors.lightwhite)
            ],
          )),
      centerTitle: true,
    );
  }
}
