import 'dart:convert';

import 'package:app/service/ServiceApi.dart';
import 'package:http/http.dart' as http;
import '../rickmortydata/RickMortyDTO.dart';
import '../util.dart';

class ServiceApiHttpImpl extends ServiceApi{

  Future<RickMorty?> getNewData() async {
    Uri uri = Uri.parse('$baseUrl/api/character/102');
    final responce = await http.get(uri);
    if (completedCodes.contains(responce.statusCode)) {
      return RickMorty.fromJson(jsonDecode(responce.body));
    } else {
      return throw Exception('${responce.statusCode}');
    }
  }

}
