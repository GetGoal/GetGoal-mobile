import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
sealed class Task with _$Task {
  const factory Task({
    final int? taskId,
    final String? taskName,
    final int? taskStatus,
    final int? userAccountId,
    final int? isSetNotification,
    final String? startTime,
    final String? endTime,
    final int? programId,
    final String? category,
    final int? timeBeforeNotify,
    final String? taskDescription,
    final String? link,
    final String? mediaUrl,
  }) = _Task;
}
