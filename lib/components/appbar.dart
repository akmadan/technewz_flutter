import 'package:flutter/material.dart';
import 'package:technewz/backend/functions.dart';
import 'package:technewz/components/location.dart';
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
        Location(),
        // IconButton(
        //     onPressed: () {
        //       fetchnews();
        //     },
        //     icon: Icon(Icons.check))
      ],
      backgroundColor: AppColors.black,
      elevation: 0,
      title: Container(
          height: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              boldText(text: 'Tech', size: 20, color: AppColors.primary),
              modifiedText(text: 'Newz', size: 20, color: AppColors.lightwhite)
            ],
          )),
      centerTitle: false,
    );
  }
}
