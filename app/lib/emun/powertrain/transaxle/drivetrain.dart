enum Drivetrain {
  frontWheelDrive,
  rearWheelDrive,
  allWheelDrive,
  fourWheelDrive,
  frontDifferentialRearDifferential,
  transferCaseRearDifferential;

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
      case 'All-Wheel Drive with Transfer Case and Rear Differential':
        return Drivetrain.transferCaseRearDifferential;
      case 'All-Wheel Drive with Front and Rear Differential':
        return Drivetrain.frontDifferentialRearDifferential;
      default:
        throw ArgumentError('Invalid drivetrain: $str');
    }
  }
}
