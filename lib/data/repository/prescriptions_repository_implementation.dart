import 'package:dio/dio.dart';
import 'package:synapserx_v2/domain/models/prescription.dart';
import 'package:synapserx_v2/domain/repository/prescription_repository.dart';

import '../../common/dio_client.dart';

class PrescriptionRepositoryImpl implements PrescriptionRepository {
  @override
  Future<Prescription> getPrescription(String prescriptionid) async {
    try {
      final response = await DioClient.instance.get(
          '/prescription/getprescription/',
          queryParameters: {"prescriptionId": prescriptionid});
      return Prescription.fromJson(response);
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }

  @override
  Future<void> deletePrescription(String prescriptionid) async {
    try {
      await DioClient.instance.put('/prescription/delete/',
          queryParameters: {"prescriptionId": prescriptionid});
    } on DioException catch (err) {
      final errorMessage = (err).toString();
      throw errorMessage;
    }
  }
}
