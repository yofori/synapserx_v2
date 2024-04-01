import '../models/adimages.dart';
import '../repository/system_repository.dart';

abstract class SystemUseCase {
  Future<List<ADImages>> getADImages();
}

class SystemUseCaseImpl extends SystemUseCase {
  final SystemRepository systemRepository;

  SystemUseCaseImpl(this.systemRepository);

  @override
  Future<List<ADImages>> getADImages() async {
    return await systemRepository.getADImages();
  }
}
