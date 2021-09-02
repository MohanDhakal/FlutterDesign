import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/utils/home/card_data.dart';
import 'package:flutter_bloc_test/utils/home/explore_data.dart';
import 'package:flutter_bloc_test/widgets/card_home.dart';
import 'package:flutter_bloc_test/widgets/explore_home.dart';

class WidgetTestScreen extends StatelessWidget {
  const WidgetTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Center(
        child: Explore(imagePath: ExploreData.imagePath1, title: ExploreData.title1, subtitle: ExploreData.subtitle1)
      ),
    ));
  }
}


