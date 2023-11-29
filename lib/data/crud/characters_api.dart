import 'package:dio/dio.dart';
import '../../core/links/links_apis.dart';

class CharactersApi {
  late Dio dio;

  CharactersApi() {
    BaseOptions options = BaseOptions(
      baseUrl: LinksApis.server,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get(LinksApis.allCharacters);
      print("=====================${response.statusCode}=====================");
      print(response.data);
      return response.data['results'];
    } on DioException catch (e) {
      print("===================${e.response!.statusCode}===================");
      print("-message = ${e.message}\n-response = ${e.response}");
      return [];
    }
  }
}
