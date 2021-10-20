import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/dummy/genre.dart';
import 'package:flutter_bloc_test/utils/home/card_data.dart';
import 'package:flutter_bloc_test/utils/home/explore_data.dart';
import 'package:flutter_bloc_test/screens/home/widgets/card_home.dart';
import 'package:flutter_bloc_test/screens/home/widgets/explore_home.dart';

class WidgetTestScreen extends StatelessWidget {
  const WidgetTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Font Checking bold",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "Font Checking thin",
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          Text(
            "Font Checking normal",
            style: TextStyle(),
          ),
        ],
      ),
    );

    // return SafeArea(
    //     child: Material(
    //   child: Center(
    //     child: Explore(imagePath: ExploreData.imagePath1, title: ExploreData.title1, subtitle: ExploreData.subtitle1)
    //   ),
    // ));
  }
}
