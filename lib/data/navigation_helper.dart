import 'package:dp_test/data/obj_movies.dart';
import 'package:dp_test/navigation/detail_movies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Class qui contient les infos de navigation pour la list view
class NavigationHelper {
  toDetail({
    required BuildContext context,
    required Movies items,
  }) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return DetailMovies(items: items);
    }));
  }
}
