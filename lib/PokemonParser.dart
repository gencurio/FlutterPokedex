import 'Pokemon.dart';

class PokemonParser{
  List<Pokemon> pokeList;

  PokemonParser({this.pokeList});

  //note: A class can define the fromJson constructor to create
  //      a new class instance from a map structure
  PokemonParser.fromJson(Map<String, dynamic> json){
    if (json['pokemon'] != null) {
      pokeList = new List<Pokemon>();
      json['pokemon'].forEach((pokemonEntry) {
        pokeList.add(new Pokemon.fromJson(pokemonEntry));
      });
    }
  }

  //note: this function generates a map structure with the top level
  //      key of 'pokemon' and all of the pokemon's details underneath
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> pokeListJson = new Map<String,dynamic>();

    if(this.pokeList != null){
      pokeListJson['pokemon'] = this.pokeList.map((pokemonEntry) => pokemonEntry.toJson()).toList();
    }
    return pokeListJson;
  }
}