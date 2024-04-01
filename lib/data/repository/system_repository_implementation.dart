import 'package:dio/dio.dart';

import '../../common/dio_client.dart';
import '../../domain/models/adimages.dart';
import '../../domain/repository/system_repository.dart';

class SystemRepositoryImpl implements SystemRepository {
  @override
  Future<List<ADImages>> getADImages() async {
    try {
      final response = await DioClient.instance.get(
        '/getcurrentimages',
      );
      return (response as List).map((x) => ADImages.fromJson(x)).toList();
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }
}
