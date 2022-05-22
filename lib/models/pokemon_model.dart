class PokemonModel {
  late final String nome;
  late final String image;

  PokemonModel.fromJSON(Map<dynamic, dynamic> json) {
    print(json['name']);
    print(json['sprites']['front_default']);
    this.image = json['sprites']['front_default'];
    this.nome = json['name'];
  }
}
