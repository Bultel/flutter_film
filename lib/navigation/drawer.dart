import 'package:dp_test/auth_use.dart';
import 'package:dp_test/data/contante.dart';
import 'package:dp_test/navigation/favourites.dart';
import 'package:dp_test/navigation/movie_list.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);
  @override
  DrawerStateMenu createState() => DrawerStateMenu();
}

class DrawerStateMenu extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: dpBlue,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/logo.jpg"),
                  ),
                  const Text(
                    "Menu",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                  InkWell(
                    // Ferme le drawer
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.close,
                      size: 30,
                      color: white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 48,
              child: drawerItem(
                text: "Home",
                icon: Icons.home_outlined,
                onCliked: () => selectedItem(context, 0),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 48,
              child: drawerItem(
                text: "Favoris",
                icon: Icons.star_border,
                onCliked: () => selectedItem(context, 1),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 48,
              child: drawerItem(
                text: "Déconnexion",
                icon: Icons.arrow_back,
                onCliked: () => selectedItem(context, 2),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget drawerItem(
      {required String text, required IconData icon, VoidCallback? onCliked}) {
    //List des elements du drawer
    //Le onClicked fait reference a la fonction selectedItem qui va gerer les routes
    return ListTile(
      leading: Icon(
        icon,
        color: white,
        size: 30,
      ),
      title: Text(
        text,
        style: const TextStyle(color: white, fontSize: 25),
      ),
      hoverColor: dpDeepBlue,
      onTap: onCliked,
    );
  }

//Switch case de navigation
  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const MovieList()));
        break;
      case 1:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const FavouritesPage()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => const LoginForm()));
        break;
    }
  }
}
