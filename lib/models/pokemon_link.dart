class PokemonLink {
  late final String name;
  late final String url;

  PokemonLink.fromJson(Map map) {
    this.name = map["name"];
    this.url = map["url"];
  }
}
