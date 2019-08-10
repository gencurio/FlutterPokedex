class Pokemon{
  int id;
  String number;
  String name;
  String img;
  List<String> type;
  String height;
  String weight;
  String candy;
  int candyCount;
  String egg;
  double spawnChance;
  double avgSpawns;
  String spawnTime;
  List<double> multipliers;
  List<String> weaknesses;
  List<Evolution> prevEvolution;
  List<Evolution> nextEvolution;

}

class Evolution {
  String number;
  String name;

  
}