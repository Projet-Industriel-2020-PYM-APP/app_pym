extension DateTimeX on DateTime {
  /// Formats a given UNIX millisecond timestamp into a human-readable string.
  ///
  /// Progresses from smallest unit (second), to largest (years)
  String formatTime() {
    /// The number of milliseconds that have passed since the timestamp
    final int difference =
        DateTime.now().millisecondsSinceEpoch - this.millisecondsSinceEpoch;
    String result;

    if (difference < 60000) {
      result = _countSeconds(difference);
    } else if (difference < 3600000) {
      result = _countMinutes(difference);
    } else if (difference < 86400000) {
      result = _countHours(difference);
    } else if (difference < 604800000) {
      result = _countDays(difference);
    } else if (difference / 1000 < 2419200) {
      result = _countWeeks(difference);
    } else if (difference / 1000 < 31536000) {
      result = _countMonths(difference);
    } else {
      result = _countYears(difference);
    }

    return !result.startsWith("A") ? 'Il y a ' + result : result;
  }

  /// Converts the time difference to a number of seconds.
  /// This function truncates to the lowest second.
  ///   returns ("Just now" OR "X seconds")
  String _countSeconds(int difference) {
    final count = difference ~/ 1000;
    return count > 1 ? count.toString() + ' secondes' : "A l'instant";
  }

  /// Converts the time difference to a number of minutes.
  /// This function truncates to the lowest minute.
  ///   returns ("1 minute" OR "X minutes")
  String _countMinutes(int difference) {
    final count = difference ~/ 60000;
    return count.toString() + (count > 1 ? ' minutes' : ' minute');
  }

  /// Converts the time difference to a number of hours.
  /// This function truncates to the lowest hour.
  ///   returns ("1 hour" OR "X hours")
  String _countHours(int difference) {
    final count = difference ~/ 3600000;
    return count.toString() + (count > 1 ? ' heures' : ' heure');
  }

  /// Converts the time difference to a number of days.
  /// This function truncates to the lowest day.
  ///   returns ("1 day" OR "X days")
  String _countDays(int difference) {
    final count = difference ~/ 86400000;
    return count.toString() + (count > 1 ? ' jours' : ' jour');
  }

  /// Converts the time difference to a number of weeks.
  /// This function truncates to the lowest week.
  ///   returns ("1 week" OR "X weeks" OR "1 month")
  String _countWeeks(int difference) {
    final count = difference ~/ 604800000;
    if (count > 3) {
      return 'un mois';
    }
    return count.toString() + (count > 1 ? ' semaines' : ' semaine');
  }

  /// Converts the time difference to a number of months.
  /// This function rounds to the nearest month.
  ///   returns ("1 month" OR "X months" OR "1 year")
  String _countMonths(int difference) {
    var count = difference ~/ 2628003000;
    count = count > 0 ? count : 1;
    if (count > 12) {
      return 'un an';
    }
    return count.toString() + ' mois';
  }

  /// Converts the time difference to a number of years.
  /// This function truncates to the lowest year.
  ///   returns ("1 year" OR "X years")
  String _countYears(int difference) {
    final count = difference ~/ 31536000000;
    return count.toString() + (count > 1 ? ' ans' : ' an');
  }
}
