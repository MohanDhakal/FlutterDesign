import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/screens/songsnepal/widgets/genre.dart';
import 'package:flutter_bloc_test/utils/home/card_data.dart';
import 'package:flutter_bloc_test/utils/home/explore_data.dart';
import 'package:flutter_bloc_test/screens/home/widgets/card_home.dart';
import 'package:flutter_bloc_test/screens/home/widgets/explore_home.dart';

class WidgetTestScreen extends StatelessWidget {
  const WidgetTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(

      child: Center(
        child: Genre(
            imageUri: "assets/images/songsnepal/genre/el2.png",
            labelText: "Adhunik"),
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
