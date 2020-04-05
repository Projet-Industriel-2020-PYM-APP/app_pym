import 'package:equatable/equatable.dart';

class BatimentPosition extends Equatable {
  final num latitude;
  final num longitude;
  final int idBatiment;

  const BatimentPosition({
    this.latitude,
    this.longitude,
    this.idBatiment,
  });

  @override
  List<Object> get props => <Object>[
        this.latitude,
        this.longitude,
        this.idBatiment,
      ];
}
