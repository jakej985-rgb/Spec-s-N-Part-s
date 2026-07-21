import '../../emun/powertrain/transaxle/drivetrain.dart';
import 'engine.dart';
import 'transmisson.dart';

class Powertrain {
  final Engine engine;
  final Transmission transmission;
  final Drivetrain driveType;

  Powertrain({
    required this.engine,
    required this.transmission,
    required this.driveType,
  });

  factory Powertrain.fromJson(Map<String, dynamic> json) {
    return Powertrain(
      engine: Engine.fromJson(json['engine']),
      transmission: Transmission.fromJson(json['transmission']),
      driveType: Drivetrain.fromString(json['driveType']),
    );
  }

  Map<String, dynamic> toJson() => {
    'engine': engine.toJson(),
    'transmissionType': transmission.transmissionType.name,
    'transmissionGears': transmission.transmissionGears,
    'driveType': driveType.name,
  };
}
