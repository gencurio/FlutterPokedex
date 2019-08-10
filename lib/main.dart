import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Pokedex('The Best Pokedex Ever!!!'),
    );
  }
}

class Pokedex extends StatelessWidget{
  String appTitle;

  @override
  Pokedex(String title){
    this.appTitle = title;
  }

  @override
  Widget build(BuildContext context){
    return StatefulScaffold(this.appTitle, PokemonGrid());//what do you want to return?
  }
}

class StatefulScaffold extends StatelessWidget{
  String appTitle;
  StatefulWidget body;

  @override
  StatefulScaffold(String title, StatefulWidget body){
    this.appTitle = title;
    this.body = body;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(this.appTitle)),
      backgroundColor: Colors.red,
      body: body
    );
  }
}

class PokemonGrid extends StatefulWidget{
  @override 
  State<PokemonGrid> createState() {
    return _PokemonGridState();
  }
}

class _PokemonGridState extends State<PokemonGrid>{
  PokemonParser pokeParser; 
  String jsonPokedex = 'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  updatePokedex(){
    // todo: 
    //   -fetch pokeDex data
    //   -await data
    //   -change widget state

  }

  @override
  Widget build(BuildContext context){
    return pokeParser == null? Center(child: CircularProgressIndicator())
    : GridView.count(
      crossAxisCount: 2, 
      children: pokeParser.pokeList.map((pokemon) => Card()).toList()
      );
  }
}

class PokemonParser{
  List<Pokemon> pokeList;

  //pokeList()
}
