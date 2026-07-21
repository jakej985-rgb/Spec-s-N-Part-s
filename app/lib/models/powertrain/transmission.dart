import '../../emun/powertrain/transaxle/transmisson_type.dart';
import '../../emun/powertrain/transaxle/transmisson_gears.dart';

class Transmission {
  final TransmissionType type;
  final TransmissionGears gears;

  const Transmission({
    required this.type,
    required this.gears,
  });

  factory Transmission.fromJson(Map<String, dynamic> json) {
    return Transmission(
      type: TransmissionType.fromString(json['type'] ?? json['transmissionType']),
      gears: TransmissionGears.fromString(
        json['gears'] ?? json['transmissionGears'],
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'type': type.name,
    'gears': gears.name,
  };
}
