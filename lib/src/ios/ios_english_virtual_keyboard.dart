

import '../../virtual_keyboard_multi_language.dart';

/// Keys for Virtual Keyboard's rows.
List<List<VirtualKeyboardKey>> iosEnglishTextKeyboardLayout = [
  // New Row 2
  [
    VirtualKeyboardKey(
      text: 'q',
      capsText: 'Q',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'w',
      capsText: 'W',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'e',
      capsText: 'E',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'r',
      capsText: 'R',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 't',
      capsText: 'T',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'y',
      capsText: 'Y',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'u',
      capsText: 'U',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'i',
      capsText: 'I',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'o',
      capsText: 'O',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'p',
      capsText: 'P',
      keyType: VirtualKeyboardKeyType.String,
    ),
  ],

  // New Row 3
  [
    VirtualKeyboardKey(
      text: 'a',
      capsText: 'A',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 's',
      capsText: 'S',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'd',
      capsText: 'D',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'f',
      capsText: 'F',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'g',
      capsText: 'G',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'h',
      capsText: 'H',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'j',
      capsText: 'J',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'k',
      capsText: 'K',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'l',
      capsText: 'L',
      keyType: VirtualKeyboardKeyType.String,
    ),
  ],

  // New Row 4
  [
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.Shift,
        keyType: VirtualKeyboardKeyType.Action),
    VirtualKeyboardKey(
      text: 'z',
      capsText: 'Z',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'x',
      capsText: 'X',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'c',
      capsText: 'C',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'v',
      capsText: 'V',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'b',
      capsText: 'B',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'n',
      capsText: 'N',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: 'm',
      capsText: 'M',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.Backspace,
        keyType: VirtualKeyboardKeyType.Action),
  ],

  // New Row 5
  [
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.SwitchNumber,
        keyType: VirtualKeyboardKeyType.Action),
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.SwithLanguage,
        keyType: VirtualKeyboardKeyType.Action),
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.Space,
        keyType: VirtualKeyboardKeyType.Action),
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.Return,
        keyType: VirtualKeyboardKeyType.Action),
  ],
];

List<List<VirtualKeyboardKey>> iosEnglishNumberKeyboardLayout = [
  // new Row 1
  [
    VirtualKeyboardKey(
      text: '1',
      capsText: "[",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '2',
      capsText: "]",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '3',
      capsText: '{',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '4',
      capsText: '}',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '5',
      capsText: '#',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '6',
      capsText: '%',
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '7',
      capsText: "^",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '8',
      capsText: "*",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '9',
      capsText: "+",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '0',
      capsText: "=",
      keyType: VirtualKeyboardKeyType.String,
    ),
  ],

  // new Row 2
  [
    VirtualKeyboardKey(
      text: '-',
      capsText: "_",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '/',
      capsText: "\\",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: ':',
      capsText: "|",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: ';',
      capsText: "~",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '(',
      capsText: "<",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: ')',
      capsText: ">",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '\$',
      capsText: "€",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '&',
      capsText: "£",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '@',
      capsText: "¥",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '"',
      capsText: "•",
      keyType: VirtualKeyboardKeyType.String,
    ),
  ],

  // new Row 3
  [
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.Shift,
        keyType: VirtualKeyboardKeyType.Action),
    VirtualKeyboardKey(
      text: '.',
      capsText: ".",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: ',',
      capsText: ",",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '?',
      capsText: "?",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: '!',
      capsText: "!",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
      text: "'",
      capsText: "'",
      keyType: VirtualKeyboardKeyType.String,
    ),
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.Backspace,
        keyType: VirtualKeyboardKeyType.Action),
  ],

  // new Row 4
  [
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.SwitchNumber,
        keyType: VirtualKeyboardKeyType.Action),
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.SwithLanguage,
        keyType: VirtualKeyboardKeyType.Action),
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.Space,
        keyType: VirtualKeyboardKeyType.Action),
    VirtualKeyboardKey(
        action: VirtualKeyboardKeyAction.Return,
        keyType: VirtualKeyboardKeyType.Action),
  ],
];
