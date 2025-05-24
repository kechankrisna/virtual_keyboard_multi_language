library virtual_keyboard_multi_language;

import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'src/ios/ios_english_virtual_keyboard.dart';
import 'src/ios/ios_khmer_virtual_keyboard.dart';
import 'src/macos/english_virtual_keyboard.dart';
import 'src/macos/khmer_virtual_keyboard.dart';
import 'src/number_virtual_keyboard.dart';
part './src/floating_dialog.dart';

part './src/key_action.dart';
part './src/key_type.dart';
part './src/key.dart';
part './src/keyboard.dart';
part './src/type.dart';
part './src/layout_keys.dart';
part './src/layouts.dart';
