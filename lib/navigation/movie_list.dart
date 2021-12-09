import 'package:dp_test/data/contante.dart';
import 'package:dp_test/data/movies_data.dart';
import 'package:dp_test/data/navigation_helper.dart';
import 'package:dp_test/data/obj_movies.dart';

import 'package:dp_test/navigation/drawer.dart';

import 'package:flutter/material.dart';

class MovieList extends StatefulWidget {
  const MovieList({Key? key}) : super(key: key);

  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  //va contenir le filtre de la list data
  List allResult = [];
  //change la couleur des icons favories
  //bool isFavorited = false;
  //Quand le user modifie le texte du field
  TextEditingController searchController = TextEditingController();

  // stock obj liste de film dans data
  final data = ListMovies().allMovies();

  @override

  //essai de filtre recherche

  void initState() {
    //initialise le changement d'etat
    super.initState();
    //addlistener regarde ce qui ce passe dans le controleur
    searchController.addListener(onSearchChanged);
  }

  onSearchChanged() {
    searchResultList();
  }

//tri des objet selon les entrées de l'utilisateur
  searchResultList() {
    // variable qui va contenir ma liste filtré
    var result = [];
//si les entrés son dif de chaine vide
    if (searchController.text != "") {
      //itere la liste d'objets
      for (var element in data) {
        var title = element.name.toLowerCase();
        if (title.contains(searchController.text.toLowerCase())) {
          result.add(element.name);
          print(result);
        }
      }
    } else {
      result = List.from(data);
    }
    //Rebuild mon widget
    setState(() {
      allResult = result;
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      drawer: (const DrawerMenu()),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: dpGrey),
        elevation: 0,
        backgroundColor: white,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Rechercher",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100)),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
            Expanded(
              //Listview permet d'afficher et de scroll ma list d'objet

              child: ListView.builder(
                  //longueur de ma list
                  itemCount: data.length,
                  //le new context et l'index de la list d'objet
                  itemBuilder: (context, index) {
                    final items = data[index];

                    return InkWell(
                        onTap: () {
                          NavigationHelper()
                              .toDetail(context: context, items: items);
                        },
                        child: moviesCard(items.image, items.name, items.date,
                            items.description, items.favorite));
                  }),
            ),
          ],
        ),
      ),
    );
  }

//-------------------Widget CARD---------------------

  Card moviesCard(
    String img,
    String title,
    String date,
    String txt,
    bool fav,
  ) {
    return Card(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      elevation: 10,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: SizedBox(
        height: 170,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  img,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 20, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    date,
                    style: const TextStyle(color: dpGrey),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 180,
                    height: 65,
                    child: Text(
                      txt,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              focusColor: dpYellow,
              //change la couleurs des icon fav
              color: fav ? dpYellow : dpGrey,
              onPressed: () => {
                setState(() {
                  fav = !fav;
                })
              },
              icon: const Icon(Icons.star),
            )
          ],
        ),
      ),
    );
  }
}
