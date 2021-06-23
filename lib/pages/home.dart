import 'package:flutter/material.dart';
import 'package:technewz/backend/functions.dart';
import 'package:technewz/components/newsbox.dart';
import 'package:technewz/utils/colors.dart';
import 'package:technewz/components/components.dart';
import 'package:technewz/utils/constants.dart';
import 'package:technewz/utils/text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List> news;

  @override
  void initState() {
    super.initState();
    news = fetchnews();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: appbar(),
        body: Container(
            width: w,
            child: FutureBuilder<List>(
              future: news,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return NewsBox(
                            imageurl:
                                snapshot.data![index]['urlToImage'] != null
                                    ? snapshot.data![index]['urlToImage']
                                    : Constants.imageurl,
                            title: snapshot.data![index]['title'],
                            time: snapshot.data![index]['publishedAt']);
                      });
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }

                // By default, show a loading spinner.
                return Center(child: CircularProgressIndicator());
              },
            )));
  }
}
