class MobilityConstants {
  static const List<String> busRetourStopList = [
    "Puits Morandat",
    "Gare SNCF",
    "Centre Charpak",
    "Notre Dame",
    "8 mai 1945"
  ];

  static const List<String> busAllerStopList = [
    "Parking Savine",
    "Notre Dame",
    "Centre Charpak",
    "Gare SNCF",
    "Puits Morandat",
  ];

  static const List<String> busLines = [
    "183",
  ];

  static const List<String> trainLines = [
    "SINOCE340",
  ];

  static const List<String> separators = [
    "!",
    ",",
    ";",
    "?",
    "%",
  ];

  static const String PYM_stop = "Puits Morandat";
}

enum Direction { Aller, Retour }
enum TransportType { Bus, Train }
