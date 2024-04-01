import 'package:freezed_annotation/freezed_annotation.dart';
part 'requestedlabs.g.dart';
part 'requestedlabs.freezed.dart';

@freezed
class RequestedLabs with _$RequestedLabs {
  factory RequestedLabs({
    required String orderedTestCode,
    required String orderedTestDescription,
    required String diagnosticService,
  }) = _RequestedLabs;

  factory RequestedLabs.fromJson(Map<String, dynamic> json) =>
      _$RequestedLabsFromJson(json);
}
