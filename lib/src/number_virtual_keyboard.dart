import '../virtual_keyboard_multi_language.dart';

/// Keys for Virtual Keyboard's rows.
List<List<VirtualKeyboardKey>> numberKeyboardLayout = [
  // New Row 1
  [
    VirtualKeyboardKey(
      text: '1',
      capsText: '1',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '2',
      capsText: '2',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '3',
      capsText: '3',
      keyType: VirtualKeyboardKeyType.String,
    ),
  ],
  // New Row 2
  [
    VirtualKeyboardKey(
      text: '4',
      capsText: '4',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '5',
      capsText: '5',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '6',
      capsText: '6',
      keyType: VirtualKeyboardKeyType.String,
    ),
  ],
  // New Row 3
  [
    VirtualKeyboardKey(
      text: '7',
      capsText: '7',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '8',
      capsText: '8',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '9',
      capsText: '9',
      keyType: VirtualKeyboardKeyType.String,
    ),
  ],
  // New Row 4
  [
    VirtualKeyboardKey(
      text: '.',
      capsText: '.',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '0',
      capsText: '0',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.Backspace,
        keyType: VirtualKeyboardKeyType.Action),
  ],
];
