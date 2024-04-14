import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
sealed class Event with _$Event {
  const factory Event({
    String? day,
  }) = _Event;
}
