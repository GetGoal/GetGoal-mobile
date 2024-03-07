import '../../domain/models/program_filter.dart';
import '../models/response/program_filter_response.dart';

extension ProgramFilterMapper on Label {
  ProgramFilter toDomain() => ProgramFilter.label(
        labelId: labelId ?? 0,
        labelName: labelName ?? '',
      );
}
