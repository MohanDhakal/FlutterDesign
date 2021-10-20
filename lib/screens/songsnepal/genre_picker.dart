import 'package:flutter/material.dart';
import 'package:flutter_bloc_test/enums/page.dart';
import 'package:flutter_bloc_test/screens/songsnepal/reusable_list.dart';

class GenrePicker extends StatelessWidget {
  const GenrePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReusableList(
        titleTag: "Choose 3 or more genre you like.",
        reusablePage: ReusablePage.genre);
  }
}
