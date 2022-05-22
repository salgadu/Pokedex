import 'package:dio/dio.dart';

class ConsumerPokedex {
  Future<Map<dynamic, dynamic>> getPokemon(String nome) async {
    var response =
        await Dio().get('https://pokeapi.co/api/v2/pokemon-form/${nome}');    
    return response.data as Map<dynamic, dynamic>;
  }
}
