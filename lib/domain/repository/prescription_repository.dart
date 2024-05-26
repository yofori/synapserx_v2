import 'package:synapserx_v2/domain/models/prescription.dart';

abstract class PrescriptionRepository {
  Future<Prescription> getPrescription(String prescriptionid);
  Future<void> deletePrescription(String prescriptionid);
}
