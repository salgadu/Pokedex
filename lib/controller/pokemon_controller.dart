import 'package:pokedex/consumer/consumer_pokedex.dart';
import 'package:pokedex/models/pokemon_model.dart';

class PokemonController {
  ConsumerPokedex pokedex = ConsumerPokedex();
  Future<List<PokemonModel>> searchPokemon(String nome) async {
    List<PokemonModel> pokemons = [];
    final result = await pokedex.getPokemon(nome);
    if (result.isNotEmpty) {
      final teste = PokemonModel.fromJSON(result);
      pokemons.add(teste);
    }
    return pokemons;
  }
}
