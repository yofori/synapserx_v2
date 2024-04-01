import '../models/adimages.dart';

abstract class SystemRepository {
  Future<List<ADImages>> getADImages();
}
