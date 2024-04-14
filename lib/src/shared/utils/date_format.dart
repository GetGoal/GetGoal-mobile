import 'package:intl/intl.dart';

String formatForRequest(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}
