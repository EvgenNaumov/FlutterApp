import 'package:app/rickmortydata/RickMortyDTO.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../util.dart';

 abstract class ServiceApi {

  Future<RickMorty> getDataDio() async{
    return Future(() => RickMorty());
  }

  Future<RickMorty> getDataHttp() async{
    return Future(() => RickMorty());
  }


  // final Dio client = Dio();

  // Future<RickMorty> getData() async {
  //   var response = await client.get('$baseUrl/api/character/102');
  //   if (completedCodes.contains(response.statusCode)) {
  //     return RickMorty.fromJson(response.data);
  //   } else {
  //     throw Exception('${response.statusCode} ${response.statusMessage}');
  //   }
  // }

  // Future<RickMorty?> getNewData() async {
  //   Uri uri = Uri.parse('$baseUrl/api/character/102');
  //   final responce = await http.get(uri);
  //   if (completedCodes.contains(responce.statusCode)) {
  //     return RickMorty.fromJson(jsonDecode(responce.body));
  //   } else {
  //     return throw Exception('${responce.statusCode}');
  //   }
  // }
}

List<int> completedCodes = [200, 201, 204];
