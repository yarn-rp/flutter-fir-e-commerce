import 'package:fpdart/fpdart.dart';

Map<int, String> months = {
  1: 'Enero',
  2: 'Febrero',
  3: 'Marzo',
  4: 'Abril',
  5: 'Mayo',
  6: 'Junio',
  7: 'Julio',
  8: 'Agosto',
  9: 'Septiembre',
  10: 'Octubre',
  11: 'Noviembre',
  12: 'Diciembre',
};

Map<int, String> daysOfTheWeek = {
  1: 'Lunes',
  2: 'Martes',
  3: 'Miercoles',
  4: 'Jueves',
  5: 'Viernes',
  6: 'Sabado',
  7: 'Domingo',
};

String humanizeDayOfTheWeek(DateTime dateTime) {
  return '${daysOfTheWeek[dateTime.weekday]}';
}

String humanizeDate(DateTime dateTime,
    {bool noYear = false, bool verbose = true}) {
  final day = dateTime.day.toString();
  final month = months[dateTime.month].toString();
  final year = dateTime.year.toString();
  if (verbose) {
    if (noYear) return '$day de $month ';
    return '$day de $month ,$year';
  }
  if (noYear) return '$day ${month.substring(0, 3)}. ';
  return '$day de $month ,$year';
}

String humanizeTime(DateTime dateTime, {bool verbose = true}) {
  int hour;
  String sufix;
  if (dateTime.hour / 12 > 1) {
    hour = dateTime.hour - 12;
    sufix = 'pm';
  } else {
    hour = dateTime.hour;
    sufix = 'am';
  }
  final hourString = hour >= 10 ? hour.toString() : '0$hour';
  final minuteString = dateTime.minute >= 10
      ? dateTime.minute.toString()
      : '0${dateTime.minute}';
  return '$hourString:$minuteString $sufix';
}

String humanizeDateTime(DateTime dateTime) {
  final date =
      '${dateTime.day} ${months[dateTime.month]?.substring(0, 3).toLowerCase()}. ${dateTime.year}';
  return '$date • ${humanizeTime(dateTime)}';
}

String humanizeDateTimeDifference(
    {required DateTime dateTime1, DateTime? dateTime2, bool verbose = true}) {
  dateTime2 ??= DateTime.now();
  final durationAndPrefix = dateTime1.compareTo(dateTime2) < 0
      ? Tuple2(dateTime2.difference(dateTime1), 'hace')
      : Tuple2(dateTime1.difference(dateTime2), 'dentro de');

  if (durationAndPrefix.first.inDays > 7 && verbose) {
    return humanizeDateTime(dateTime1);
  } else if (durationAndPrefix.first.inDays > 7) {
    return durationAndPrefix.first.inDays == 1
        ? '${verbose ? (durationAndPrefix.second) : ""} un dia'
        : '${verbose ? (durationAndPrefix.second) : ""} ${durationAndPrefix.first.inDays ~/ 7} w';
  } else if (durationAndPrefix.first.inDays > 0) {
    return durationAndPrefix.first.inDays == 1
        ? '${verbose ? (durationAndPrefix.second) : ""} un dia'
        : '${verbose ? (durationAndPrefix.second) : ""} ${durationAndPrefix.first.inDays} d';
  } else {
    if (durationAndPrefix.first.inHours > 0) {
      return durationAndPrefix.first.inHours == 1
          ? '${verbose ? (durationAndPrefix.second) : ""} una hora'
          : '${verbose ? (durationAndPrefix.second) : ""} ${durationAndPrefix.first.inHours} h';
    } else {
      if (durationAndPrefix.first.inMinutes > 0) {
        return durationAndPrefix.first.inMinutes == 1
            ? '${verbose ? (durationAndPrefix.second) : ""} un minuto'
            : '${verbose ? (durationAndPrefix.second) : ""} ${durationAndPrefix.first.inMinutes} min';
      } else {
        return 'ahora mismo';
      }
    }
  }
}

String humanizeNum(num number) {
  if (number / 1000000 > 1) {
    return '${number ~/ 1000000}M';
  }
  if (number / 1000 > 1) {
    return '${number ~/ 1000}k';
  }
  return number.toString();
}
