import 'package:dp_test/data/contante.dart';
import 'package:dp_test/data/obj_movies.dart';
import 'package:dp_test/navigation/drawer.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class DetailMovies extends StatelessWidget {
  Movies items;
  //recupere ma list d'objet de ma movie_list
  DetailMovies({required this.items, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: dpDeepBlue,
        drawer: const DrawerMenu(),
        body: SizedBox(
          height: 700,
          width: double.infinity,
          child: Stack(
            children: [
              Image.asset(items.image),
              AppBar(
                iconTheme: const IconThemeData(color: dpGrey),
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 70, color: dpDeepBlue, spreadRadius: 100),
                  ]),
                  height: 350,
                  width: 400,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            items.name,
                            style: const TextStyle(
                                color: white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.star),
                            color: dpYellow,
                            iconSize: 27,
                          ),
                        ],
                      ),
                      Container(
                        height: 120,
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        right: BorderSide(
                                            width: 1, color: white))),
                                padding: const EdgeInsets.only(right: 40),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularPercentIndicator(
                                      backgroundColor: dpGrey,
                                      progressColor: dpGreen,
                                      lineWidth: 7,
                                      radius: 70,
                                      percent: double.parse(items.note2),
                                      animation: true,
                                      center: Text(
                                        items.note,
                                        style: const TextStyle(
                                            color: white, fontSize: 18),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Note du public",
                                      style: TextStyle(
                                          color: dpGrey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                            Container(
                              padding: const EdgeInsets.only(right: 70),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  textDescription(items.time),
                                  textDescription(items.date),
                                  textDescription(items.type),
                                  textDescription(items.public),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(15),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "Synopsis :",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              items.description,
                              style: const TextStyle(
                                color: white,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Text textDescription(String itemsDescription) {
    return Text(
      itemsDescription,
      style: const TextStyle(color: dpGrey),
    );
  }
}
