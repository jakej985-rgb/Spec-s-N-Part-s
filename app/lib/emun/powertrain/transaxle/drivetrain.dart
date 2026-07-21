enum Drivetrain {
  frontWheelDrive,
  rearWheelDrive,
  allWheelDrive,
  fourWheelDrive;

  static Drivetrain fromString(String str) {
    switch (str) {
      case 'Front-Wheel Drive':
        return Drivetrain.frontWheelDrive;
      case 'Rear-Wheel Drive':
        return Drivetrain.rearWheelDrive;
      case 'All-Wheel Drive':
        return Drivetrain.allWheelDrive;
      case 'Four-Wheel Drive':
        return Drivetrain.fourWheelDrive;
      default:
        throw ArgumentError('Invalid drivetrain: $str');
    }
  }
}
