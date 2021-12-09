import 'package:dp_test/data/obj_movies.dart';

//Renvoi une List des items de mon objet
class ListMovies {
  List<Movies> allMovies() {
    return [
      Movies(
        name: "Spider-man: No way home",
        image: "assets/Spider-Man.jpg",
        description:
            "Pour la première fois dans l'histoire cinématographique de Spider-Man, notre sympathique héros est démasqué et n'est plus capable de séparer sa vie normale des enjeux considérables de son rôle de super-héros. Lorsqu'il sollicite l'aide du Docteur Strange, les enjeux deviennent encore plus dangereux, le forçant à se demander ce que signifie vraiment être Spider-Man.",
        date: "15 Décembre 2021",
        time: "2h 30",
        type: "Action/Aventure",
        public: "Tous publics",
        note: "85%",
        note2: "0.85",
        favorite: true,
      ),
      Movies(
        name: "La méthode Williams",
        image: "assets/Williams-Affiche.jpeg",
        description:
            "Armé d'une vision claire et d'un plan de 78 pages, Richard Williams est déterminé à ce que ses deux filles, Vénus et Serena, écrivent l'Histoire. S'entraînant sur des courts de tennis à Compton, en Californie, Richard façonne l'engagement inébranlable et la vive intuition des filles. Ensemble, la famille Williams défie les probabilités apparemment insurmontables et les attentes qui se présentent à elles.",
        date: "1er Décembre 2021",
        time: "2h 18",
        type: "DRame/Biopic",
        public: "Tous publics",
        note: "65%",
        note2: "0.65",
        favorite: false,
      ),
      Movies(
        name: "Encanto",
        image: "assets/maribel-encanto-affiche-france.jpg",
        description:
            "Les Madrigal sont une famille extraordinaire qui vit cachée dans les montagnes de Colombie, dans un endroit appelé l'Encanto. La magie de l'Encanto a béni chaque enfant de la famille avec un cadeau unique; chaque enfant sauf Mirabel. Cependant, elle pourrait bientôt être le dernier espoir des Madrigal lorsqu'elle découvre que la magie entourant l'Encanto est maintenant en danger.",
        date: "24 Novembre 2021",
        time: "1h 43",
        type: "Animation/Fantastique",
        public: "Tous publics",
        note: "75%",
        note2: "0.75",
        favorite: false,
      ),
      Movies(
        name: "Les Eternels",
        image: "assets/affiche-eternels.jpg",
        description:
            "Après les événements d'Avengers : Endgame', une tragédie imprévue oblige les Éternels à sortir de l'ombre et à se rassembler à nouveau face à l'ennemi le plus ancien de la race humaine : les Déviants.",
        date: "3 Novembre 2021",
        time: "2h 37",
        type: "Action/Fantastique",
        public: "Tous publics",
        note: "50%",
        note2: "0.5",
        favorite: false,
      )
    ];
  }
}
