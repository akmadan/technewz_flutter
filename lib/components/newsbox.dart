import 'package:flutter/material.dart';
import 'package:technewz/utils/colors.dart';
import 'package:technewz/utils/text.dart';

import 'components.dart';

class NewsBox extends StatelessWidget {
  final String imageurl, title, time;
  const NewsBox(
      {Key? key,
      required this.imageurl,
      required this.title,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(left: 5, right: 5, top: 5),
          width: w,
          color: AppColors.black,
          child: Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          imageurl,
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    modifiedText(color: AppColors.white, size: 16, text: title),
                    SizedBox(height: 5),
                    modifiedText(
                        color: AppColors.lightwhite, size: 12, text: time),
                  ],
                ),
              ),
            ],
          ),
        ),
        DividerWidget()
      ],
    );
  }
}
