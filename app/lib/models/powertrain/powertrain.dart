import '../../emun/powertrain/transaxle/drivetrain.dart';
import 'engine.dart';
import 'transmission.dart';

export 'engine.dart';
export 'transmission.dart';

class Powertrain {
  final Engine engine;
  final Transmission transmission;
  final Drivetrain driveType;

  const Powertrain({
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
    'transmission': transmission.toJson(),
    'driveType': driveType.name,
  };
}
