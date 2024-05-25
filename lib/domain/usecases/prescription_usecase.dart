import 'package:synapserx_v2/domain/models/prescription.dart';
import 'package:synapserx_v2/domain/repository/prescription_repository.dart';

abstract class PrescriptionUseCase {
  Future<Prescription> getPrescription(String prescriptionId);
}

class PrescriptionUseCaseImpl extends PrescriptionUseCase {
  final PrescriptionRepository prescriptionRepository;

  PrescriptionUseCaseImpl(this.prescriptionRepository);

  @override
  Future<Prescription> getPrescription(String prescriptionId) async {
    return await prescriptionRepository.getPrescription(prescriptionId);
  }
}
