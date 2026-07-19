import 'package:spec_s_n_part_s/models/fluids/fluids.dart';

class LubeSpec {
  final EngineOilSpec engineOilSpecs;
  final TransmissionFluidSpecs transmissionFluidSpecs;
  final TransferCaseFluidSpec? transferCaseFluidSpec;
  final FrontDifferentialFluidSpecs? frontDifferentialFluidSpec;
  final RearDifferentialFluidSpecs? rearDifferentialFluid;
  final String coolantFluid;
  final String brakeFluid;
  final String? powerSteeringFluid;

  LubeSpec({
    required this.engineOilSpecs,
    required this.transmissionFluidSpecs,
    this.transferCaseFluidSpec,
    this.frontDifferentialFluidSpec,
    this.rearDifferentialFluid,
    required this.coolantFluid,
    required this.brakeFluid,
    this.powerSteeringFluid,
  });

  // copyWith method to allow safely replacing fields with custom values
  LubeSpec copyWith({
    EngineOilSpec? engineOilSpecs,
    TransmissionFluidSpecs? transmissionFluidSpecs,
    TransferCaseFluidSpec? transferCaseFluidSpec,
    FrontDifferentialFluidSpecs? frontDifferentialFluidSpec,
    RearDifferentialFluidSpecs? rearDifferentialFluidSpec,
    String? coolantFluid,
    String? brakeFluid,
    String? powerSteeringFluid,
  }) {
    return LubeSpec(
      engineOilSpecs: engineOilSpecs ?? this.engineOilSpecs,
      transmissionFluidSpecs:
          transmissionFluidSpecs ?? this.transmissionFluidSpecs,
      transferCaseFluidSpec:
          transferCaseFluidSpec ?? this.transferCaseFluidSpec,
      frontDifferentialFluidSpec:
          frontDifferentialFluidSpec ?? this.frontDifferentialFluidSpec,
      rearDifferentialFluid: rearDifferentialFluidSpec ?? rearDifferentialFluid,
      coolantFluid: coolantFluid ?? this.coolantFluid,
      brakeFluid: brakeFluid ?? this.brakeFluid,
      powerSteeringFluid: powerSteeringFluid ?? this.powerSteeringFluid,
    );
  }
}
