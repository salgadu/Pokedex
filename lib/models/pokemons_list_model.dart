import 'package:pokedex/models/pokemon_link.dart';

class PokemonListModel {
  late final int count;
  late final String next;
  late final String? previous;
  List<PokemonLink> pokemons = [];

  PokemonListModel.fromJson(Map<String, dynamic> map) {
    count = map['count'];
    next = map['next'];
    if (map['previous'] != null) {
      previous = map['previous'];
    }

    if (map['results'] != null) {
      map['results'].forEach((v) {
        pokemons.add(v);
      });
    }
  }
}
