//Objet Movies

class Movies {
  String name;
  String image;
  String description;
  String date;
  String time;
  String type;
  String public;
  String note;
  String note2;
  bool favorite;

  Movies(
      {required this.name,
      required this.image,
      required this.description,
      required this.date,
      required this.time,
      required this.type,
      required this.public,
      required this.note,
      required this.note2,
      required this.favorite});
}
