enum EngineForm {
  inline,
  vEngine,
  boxer,
  wEngine,
  rotary,
  vrEngine;

  static EngineForm fromString(String str) {
    switch (str) {
      case 'i':
        return EngineForm.inline;
      case 'V':
        return EngineForm.vEngine;
      case 'H':
        return EngineForm.boxer;
      case 'W':
        return EngineForm.wEngine;
      case 'R':
        return EngineForm.rotary;
      case 'VR':
        return EngineForm.vrEngine;
      default:
        throw ArgumentError('Invalid engine form: $str');
    }
  }
}
