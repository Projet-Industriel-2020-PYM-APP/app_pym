class MobilityConstants {
  static const List<String> _busRetourStopList = [
    "Puits Morandat",
    "Gare SNCF",
    "Centre Charpak",
    "Notre Dame",
    "8 mai 1945"
  ];

  static const List<String> _busAllerStopList = [
    "Parking Savine",
    "Notre Dame",
    "Centre Charpak",
    "Gare SNCF",
    "Puits Morandat",
  ];

  static List<String> busStopList(Direction direction) {
    if (direction == Direction.Aller) {
      return _busAllerStopList;
    } else {
      return _busRetourStopList;
    }
  }

  static const List<String> busLines = [
    "183",
  ];

  static const List<String> trainLines = [
    "OCE340",
  ];

  static const String pymStop = "Puits Morandat";

  static const String gareGardanne = "Gare de Gardanne";
}

enum Direction { Aller, Retour }
