import 'package:dp_test/data/movies_data.dart';
import 'package:dp_test/navigation/drawer.dart';
import 'package:flutter/material.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: (const DrawerMenu()),
        appBar: AppBar(
          title: const Text("Favoris"),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.all(10),
            child: SizedBox(
              child: ListView.builder(
                  itemCount: ListMovies().allMovies().length,
                  itemBuilder: (context, index) {
                    final place = ListMovies().allMovies()[index];
                    return ListTile(
                      title: Text(place.name),
                      leading: Text(place.name),
                      trailing: Image.asset(place.image),
                    );
                  }),
            )));
  }
}
