import 'package:app/rickmortydata/RickMortyDTO.dart';
import 'package:app/service/ServiceApi.dart';
import 'package:dio/dio.dart';

import '../util.dart';

class ServiceApiDioImpl extends ServiceApi{

  final Dio client = Dio();

  @override
  Future<RickMorty> getDataDio() async {
    var response = await client.get('$baseUrl/api/character/102');
    if (completedCodes.contains(response.statusCode)) {
      return RickMorty.fromJson(response.data);
    } else {
      throw Exception('${response.statusCode} ${response.statusMessage}');
    }
  }

}
