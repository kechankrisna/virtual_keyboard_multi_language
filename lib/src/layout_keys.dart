part of virtual_keyboard_multi_language;

abstract class VirtualKeyboardLayoutKeys {
  int activeIndex = 0;

  bool isNumberMode = false;

  List<List<VirtualKeyboardKey>> get defaultEnglishLayout => isNumberMode
      ? iosEnglishNumberKeyboardLayout
      : iosEnglishTextKeyboardLayout;

  List<List<VirtualKeyboardKey>> get defaultKhmerLayout =>
      isNumberMode ? iosKhmerNumberKeyboardLayout : iosKhmerTextKeyboardLayout;

  List<List<VirtualKeyboardKey>> get activeLayout => getLanguage(activeIndex);
  int getLanguagesCount();
  List<List<VirtualKeyboardKey>> getLanguage(int index);

  void switchLanguage() {
    if ((activeIndex + 1) == getLanguagesCount())
      activeIndex = 0;
    else
      activeIndex++;
  }

  toggleisNumberMode() {
    isNumberMode = !isNumberMode;
    // This method can be overridden in subclasses if needed.
  }
}

class VirtualKeyboardDefaultLayoutKeys extends VirtualKeyboardLayoutKeys {
  List<VirtualKeyboardDefaultLayouts> defaultLayouts;
  VirtualKeyboardDefaultLayoutKeys(this.defaultLayouts);

  int getLanguagesCount() => defaultLayouts.length;

  List<List<VirtualKeyboardKey>> getLanguage(int index) {
    // switch (defaultLayouts[index]) {
    //   case VirtualKeyboardDefaultLayouts.English:
    //     return englishKeyboardLayout;
    //   case VirtualKeyboardDefaultLayouts.Khmer:
    //     return khmerKeyboardLayout;
    //   default:
    // }
    switch (defaultLayouts[index]) {
      case VirtualKeyboardDefaultLayouts.English:
        return defaultEnglishLayout;
      case VirtualKeyboardDefaultLayouts.Khmer:
        return defaultKhmerLayout;
      default:
    }
    return defaultEnglishLayout;
  }
}
