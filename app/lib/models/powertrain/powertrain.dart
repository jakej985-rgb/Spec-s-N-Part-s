import 'drivetrain.dart'

class Powertrain {
  final String engineType;
  final String engineSize;
  final String engineCylinders;
  final String transmissionType;
  final drivetrain driveType;

  Powertrain({
    required this.engineType,
    required this.engineSize,
    required this.engineCylinders,
    required this.transmissionType,
    required this.driveType,
  });
}
