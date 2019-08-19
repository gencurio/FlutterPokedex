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

  Pokemon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    number = json['number'];
    name = json['name'];
    img = json['img'];
    type = json['type'];
    height = json['height'];
    weight = json['weight'];
    candy = json['candy'];
    candyCount = json['candy_count'];
    egg = json['egg'];
    spawnChance = json['spawn_chance'];
    avgSpawns = json['avg_spawns'];
    spawnTime = json['spawn_time'];
    multipliers = json['multipliers'];
    weaknesses = json['weaknesses'];
    if(json['next_evolution'] != null){
      nextEvolution = new List<Evolution>();

      json['next_evolution'].forEach((evolution){
        nextEvolution.add(new Evolution.fromJson(evolution));
      });
    }
    if(json['prev_evolution'] != null){
      prevEvolution = new List<Evolution>();

      json['prev_evolution'].forEach((evolution){
        prevEvolution.add(new Evolution.fromJson(evolution));
      });
    }    
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> pokemonJson = new Map<String, dynamic>();

    pokemonJson['id'] = this.id;
    pokemonJson['number'] = this.number;
    pokemonJson['name'] = this.name;
    pokemonJson['img'] = this.img;
    pokemonJson['type'] = this.type;
    pokemonJson['height'] = this.height;
    pokemonJson['weight'] = this.weight;
    pokemonJson['candy'] = this.candy;
    pokemonJson['candy_count'] = this.candyCount;
    pokemonJson['egg'] = this.egg;
    pokemonJson['spawn_chance'] = this.spawnChance;
    pokemonJson['avg_spawns'] = this.avgSpawns;
    pokemonJson['spawn_time'] = this.spawnTime;
    pokemonJson['multipliers'] = this.multipliers;
    pokemonJson['weaknesses'] = this.weaknesses;

    if(this.nextEvolution != null){
      pokemonJson['next_evolution'] = this.nextEvolution.map((evolution) => evolution.toJson()).toList();
    }
    
    if(this.prevEvolution != null){
      pokemonJson['prev_evolution'] = this.prevEvolution.map((evolution) => evolution.toJson()).toList();
    }

    return pokemonJson;
  }
}

//This class will be used for next and previous evolutions
class Evolution {
  String number;
  String name;

  Evolution.fromJson(Map<String, dynamic> json){
    number = json['num'];
    name = json['name'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> evolutionJson = new Map<String, dynamic>();

    evolutionJson['num'] = this.number;
    evolutionJson['name'] = this.name;

    return evolutionJson;
  }
}