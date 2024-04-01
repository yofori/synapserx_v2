import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synapserx_v2/domain/usecases/provider.dart';

import '../../../domain/models/adimages.dart';

part 'adimages_provider.g.dart';

@riverpod
class ADImagesList extends _$ADImagesList {
  List<ADImages> adImages = [];
  Future<List<ADImages>> getADImages() async {
    state = const AsyncLoading();
    final adImages = await ref.watch(systemDataProvider).getADImages();
    return adImages;
  }

  @override
  FutureOr<List<ADImages>> build() async {
    return getADImages();
  }
}
