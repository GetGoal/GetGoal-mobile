import 'package:intl/intl.dart';

String formatForRequest(DateTime date) {
  return DateFormat('yyyy-MM-dd').format(date);
}
