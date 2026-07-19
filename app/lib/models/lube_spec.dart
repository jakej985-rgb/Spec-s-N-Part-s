import 'package:spec_s_n_part_s/models/fluids/engine_oil_spec.dart';

class LubeSpec {
  final EngineOilSpec engineOilSpecs;
  final String transmissionFluid;
  final String? transferCaseFluid;
  final String? frontDifferentialFluid;
  final String? rearDifferentialFluid;
  final String coolantFluid;
  final String brakeFluid;
  final String? powerSteeringFluid;

  LubeSpec({
    required this.engineOilSpecs,
    required this.transmissionFluid,
    this.transferCaseFluid,
    this.frontDifferentialFluid,
    this.rearDifferentialFluid,
    required this.coolantFluid,
    required this.brakeFluid,
    this.powerSteeringFluid,
  });

  // copyWith method to allow safely replacing fields with custom values
  LubeSpec copyWith({
    EngineOilSpec? engineOilSpecs,
    String? transmissionFluid,
    String? transferCaseFluid,
    String? frontDifferentialFluid,
    String? rearDifferentialFluid,
    String? coolantFluid,
    String? brakeFluid,
    String? powerSteeringFluid,
  }) {
    return LubeSpec(
      engineOilSpecs: engineOilSpecs ?? this.engineOilSpecs,
      transmissionFluid: transmissionFluid ?? this.transmissionFluid,
      transferCaseFluid: transferCaseFluid ?? this.transferCaseFluid,
      frontDifferentialFluid:
          frontDifferentialFluid ?? this.frontDifferentialFluid,
      rearDifferentialFluid:
          rearDifferentialFluid ?? this.rearDifferentialFluid,
      coolantFluid: coolantFluid ?? this.coolantFluid,
      brakeFluid: brakeFluid ?? this.brakeFluid,
      powerSteeringFluid: powerSteeringFluid ?? this.powerSteeringFluid,
    );
  }
}
