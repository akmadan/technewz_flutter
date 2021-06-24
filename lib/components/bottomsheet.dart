import 'package:flutter/material.dart';
import 'package:technewz/components/components.dart';
import 'package:technewz/utils/text.dart';

void showMyBottomSheet(
    BuildContext context, String title, String description, imageurl) {
  showBottomSheet(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      elevation: 20,
      context: context,
      builder: (context) {
        return MyBottomSheetLayout(
          imageurl: imageurl,
          title: title,
          description: description,
        ); // returns your BottomSheet widget
      });
}

//your bottom sheet widget class
//you can put your things here, like buttons, callbacks and layout
class MyBottomSheetLayout extends StatelessWidget {
  final String title, description, imageurl;

  const MyBottomSheetLayout(
      {Key? key,
      required this.title,
      required this.description,
      required this.imageurl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          BottomSheetImage(imageurl: imageurl, title: title),
          Container(
              padding: EdgeInsets.all(10),
              child: modifiedText(
                  text: description, size: 16, color: Colors.white))
        ],
      ),
    );
  }
}
