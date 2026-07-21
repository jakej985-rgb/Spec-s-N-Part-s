import '../../emun/powertrain/transaxle/transmisson_type.dart';
import '../../emun/powertrain/transaxle/transmisson_gears.dart';

class Transmission {
  final TransmissionType transmissionType;
  final TransmissionGears transmissionGears;

  Transmission({
    required this.transmissionType,
    required this.transmissionGears,
  });

  factory Transmission.fromJson(Map<String, dynamic> json) {
    return Transmission(
      transmissionType: TransmissionType.fromString(json['transmissionType']),
      transmissionGears: TransmissionGears.fromString(
        json['transmissionGears'],
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'transmissionType': transmissionType.name,
    'transmissionGears': transmissionGears.name,
  };
}
