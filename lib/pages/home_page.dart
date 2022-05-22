import 'package:flutter/material.dart';
import 'package:pokedex/components/pokemon.dart';
import 'package:pokedex/controller/pokemon_controller.dart';
import 'package:pokedex/models/pokemon_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PokemonController _pokemonController;
  TextEditingController controller = TextEditingController(text: 'bulbasaur');
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokemonController = PokemonController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pokedex",
        ),
      ),
      body: FutureBuilder<List<PokemonModel>>(
          future: _pokemonController.searchPokemon(controller.text),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 40,
                right: 40,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 80,
                          child: TextField(
                            controller: controller,
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: Icon(Icons.search))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView(
                    shrinkWrap: true,
                    children:
                        snapshot.data!.map((e) => Pokemon(pokemon: e)).toList(),
                  )
                ],
              ),
            );
          }),
    );
  }
}
