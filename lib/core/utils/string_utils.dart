extension StringUtils on String {
  Map<String, int> parseFields() {
    final Map<String, int> data = <String, int>{};
    final List<String> fields = this.split(',');
    for (var i = 0; i < fields.length; i++) {
      data.putIfAbsent(fields[i], () => i);
    }
    return data;
  }

  DateTime timeToDateTime({DateTime overrideDate}) {
    final DateTime now = overrideDate ?? DateTime.now();
    final List<int> busTimestamp = this.split(':').map(int.parse).toList();
    final DateTime busTime = DateTime(now.year, now.month, now.day,
        busTimestamp[0], busTimestamp[1], busTimestamp[2]);
    return busTime;
  }
}
