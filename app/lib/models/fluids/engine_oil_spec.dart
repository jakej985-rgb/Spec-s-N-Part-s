import 'fluid_spec.dart';

class EngineOilSpec extends FluidSpec {
  final String viscosity;

  const EngineOilSpec({
    required super.type,
    required super.capacity,
    required this.viscosity,
    super.specification,
  });
}
