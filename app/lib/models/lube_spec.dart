import 'package:spec_s_n_part_s/models/fluids/fluids.dart';

class LubeSpec {
  final EngineOilSpec engineOilSpec;
  final TransmissionFluidSpec transmissionFluidSpec;
  final TransferCaseFluidSpec? transferCaseFluidSpec;
  final FrontDiffFluidSpec? frontDiffFluidSpec;
  final RearDiffFluidSpec? rearDiffFluidSpec;
  final CoolantSpec coolantSpec;
  final BrakeFluidSpec brakeFluidSpec;
  final PowerSteeringFluidSpec? powerSteeringFluidSpec;

  const LubeSpec({
    required this.engineOilSpec,
    required this.transmissionFluidSpec,
    this.transferCaseFluidSpec,
    this.frontDiffFluidSpec,
    this.rearDiffFluidSpec,
    required this.coolantSpec,
    required this.brakeFluidSpec,
    this.powerSteeringFluidSpec,
  });

  // copyWith method to allow safely replacing fields with custom values
  LubeSpec copyWith({
    EngineOilSpec? engineOilSpec,
    TransmissionFluidSpec? transmissionFluidSpec,
    TransferCaseFluidSpec? transferCaseFluidSpec,
    FrontDiffFluidSpec? frontDiffFluidSpec,
    RearDiffFluidSpec? rearDiffFluidSpec,
    CoolantSpec? coolantSpec,
    BrakeFluidSpec? brakeFluidSpec,
    PowerSteeringFluidSpec? powerSteeringFluidSpec,
  }) {
    return LubeSpec(
      engineOilSpec: engineOilSpec ?? this.engineOilSpec,
      transmissionFluidSpec:
          transmissionFluidSpec ?? this.transmissionFluidSpec,
      transferCaseFluidSpec:
          transferCaseFluidSpec ?? this.transferCaseFluidSpec,
      frontDiffFluidSpec: frontDiffFluidSpec ?? this.frontDiffFluidSpec,
      rearDiffFluidSpec: rearDiffFluidSpec ?? this.rearDiffFluidSpec,
      coolantSpec: coolantSpec ?? this.coolantSpec,
      brakeFluidSpec: brakeFluidSpec ?? this.brakeFluidSpec,
      powerSteeringFluidSpec:
          powerSteeringFluidSpec ?? this.powerSteeringFluidSpec,
    );
  }
}
