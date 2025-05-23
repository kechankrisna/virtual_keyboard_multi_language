part of virtual_keyboard_multi_language;

abstract class VirtualKeyboardLayoutKeys {
  int activeIndex = 0;

  List<List<VirtualKeyboardKey>> get defaultEnglishLayout => englishKeyboardLayout;

  List<List<VirtualKeyboardKey>> get defaultKhmerLayout => khmerKeyboardLayout;

  List<List<VirtualKeyboardKey>> get activeLayout => getLanguage(activeIndex);
  int getLanguagesCount();
  List<List<VirtualKeyboardKey>> getLanguage(int index);

  void switchLanguage() {
    if ((activeIndex + 1) == getLanguagesCount())
      activeIndex = 0;
    else
      activeIndex++;
  }
}

class VirtualKeyboardDefaultLayoutKeys extends VirtualKeyboardLayoutKeys {
  List<VirtualKeyboardDefaultLayouts> defaultLayouts;
  VirtualKeyboardDefaultLayoutKeys(this.defaultLayouts);

  int getLanguagesCount() => defaultLayouts.length;

  List<List<VirtualKeyboardKey>> getLanguage(int index) {
    switch (defaultLayouts[index]) {
      case VirtualKeyboardDefaultLayouts.English:
        return englishKeyboardLayout;
      case VirtualKeyboardDefaultLayouts.Khmer:
        return khmerKeyboardLayout;
      default:
    }
    return englishKeyboardLayout;
  }
}