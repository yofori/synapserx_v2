import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synapserx_v2/domain/models/prescription.dart';
import 'package:synapserx_v2/domain/usecases/provider.dart';

part 'prescriptions_provider.g.dart';

@riverpod
Future<Prescription> fetchPrescription(
    FetchPrescriptionRef ref, String prescriptionId) {
  final prescription = ref.watch(prescriptionDataProvider);
  return prescription.getPrescription(prescriptionId);
}
