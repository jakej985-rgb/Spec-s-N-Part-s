import 'package:spec_s_n_part_s/models/fluids/engine_oil_spec.dart';
import 'package:spec_s_n_part_s/models/fluids/front_diff_fluid_specs.dart'
    show FrontDifferentialFluidSpecs;
import 'package:spec_s_n_part_s/models/fluids/rear_diff_fluid_spec.dart';
import 'package:spec_s_n_part_s/models/fluids/transmission_fluid_specs.dart';
import 'package:spec_s_n_part_s/models/fluids/transfer_case_fluid_spec.dart';

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
      rearDifferentialFluid:
          rearDifferentialFluid ?? this.rearDifferentialFluid,
      coolantFluid: coolantFluid ?? this.coolantFluid,
      brakeFluid: brakeFluid ?? this.brakeFluid,
      powerSteeringFluid: powerSteeringFluid ?? this.powerSteeringFluid,
    );
  }
}
