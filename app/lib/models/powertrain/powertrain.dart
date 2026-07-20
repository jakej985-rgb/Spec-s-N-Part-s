import 'drivetrain.dart'

class Drivetrain {
  final String engineType;
  final String engineSize;
  final String engineCylinders;
  final String transmissionType;
  final drivetrain driveType;

  Drivetrain({
    required this.engineType,
    required this.engineSize,
    required this.engineCylinders,
    required this.transmissionType,
    required this.driveType,
  });
}
