class MobilityConstants {
  static const String busLine = "183";

  static const String trainLine = "OCE340";

  static const String pymStop = "Puits Morandat";

  static const String gareGardanne = "Gare de Gardanne";

  static const String gareAix = "Gare de Aix-en-Provence";
}

enum Direction { Aller, Partir }
enum Sens { Aller, Retour }

extension DirectionX on Direction {
  Direction get reverse {
    return this == Direction.Aller ? Direction.Partir : Direction.Aller;
  }
}
