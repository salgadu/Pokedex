import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';

class Pokemon extends StatelessWidget {
  final PokemonModel pokemon;
  const Pokemon({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        child: Row(
          children: [
            CircleAvatar(
              child: Image.network(pokemon.image),
              radius: 50,
            ),
            SizedBox(width: 20),
            Text(pokemon.nome),
          ],
        ),
      ),
    );
  }
}
