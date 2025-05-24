import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:virtual_keyboard_multi_language/virtual_keyboard_multi_language.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Virtual Keyboard Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      home: MyHomePage(title: 'Virtual Keyboard Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Holds the text that user typed.
  String text = '';
  // CustomLayoutKeys _customLayoutKeys;
  // True if shift enabled.
  bool shiftEnabled = false;

  // is true will show the numeric keyboard.
  bool isNumericMode = false;

  TextEditingController? _controllerText;

  late TextEditingController ctrl1 = TextEditingController();
  late TextEditingController ctrl2 = TextEditingController();

  @override
  void initState() {
    // _customLayoutKeys = CustomLayoutKeys();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'ctrl1',
                  border: OutlineInputBorder(),
                ),
                keyboardType:
                    isNumericMode ? TextInputType.number : TextInputType.text,
                inputFormatters: isNumericMode
                    ? [FilteringTextInputFormatter.digitsOnly]
                    : [],
                controller: ctrl1,
                onTap: () {
                  setState(() {
                    _controllerText = ctrl1;
                  });
                },
              ),
              SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  labelText: 'ctrl2',
                  border: OutlineInputBorder(),
                ),
                keyboardType:
                    isNumericMode ? TextInputType.number : TextInputType.text,
                inputFormatters: isNumericMode
                    ? [FilteringTextInputFormatter.digitsOnly]
                    : [],
                controller: ctrl2,
                onTap: () {
                  setState(() {
                    _controllerText = ctrl2;
                  });
                },
              ),
              Text(
                _controllerText?.text ?? '',
                style: TextStyle(color: Colors.red),
              ),
              SwitchListTile(
                title: Text(
                  'Keyboard Type = ' +
                      (isNumericMode
                          ? 'VirtualKeyboardType.Numeric'
                          : 'VirtualKeyboardType.Alphanumeric'),
                ),
                value: isNumericMode,
                onChanged: (val) {
                  setState(() {
                    isNumericMode = val;
                  });
                },
              ),
            ],
          ),

          ///
          FloatingDialog(
              onDrag: (dragDetails, x, y) {
                print({"dragDetails": dragDetails, "x": x, "y": y});
              },
              child: Container(
                color: Theme.of(context).scaffoldBackgroundColor,
                child: VirtualKeyboard(
                    keyBorder: Border(
                      top: BorderSide(
                          color: Theme.of(context).dividerColor, width: 0.5),
                      bottom: BorderSide(
                          color: Theme.of(context).dividerColor, width: 0.5),
                      left: BorderSide(
                          color: Theme.of(context).dividerColor, width: 0.5),
                      right: BorderSide(
                          color: Theme.of(context).dividerColor, width: 0.5),
                    ),
                    height: 250,
                    width: width < 600 ? (width - 20) : 600,
                    textColor: Theme.of(context).textTheme.bodyMedium?.color ??
                        Colors.black,
                    textController: _controllerText,
                    //customLayoutKeys: _customLayoutKeys,
                    defaultLayouts: [
                      VirtualKeyboardDefaultLayouts.English,
                      VirtualKeyboardDefaultLayouts.Khmer,
                    ],
                    //reverseLayout :true,
                    type: isNumericMode
                        ? VirtualKeyboardType.Numeric
                        : VirtualKeyboardType.Alphanumeric,
                    postKeyPress: _onKeyPress),
              ))
        ],
      ),
    );
  }

  TextEditingController? getCurrentFocusedTextEditingController() {
    final focusNode = FocusManager.instance.primaryFocus;
    if (focusNode == null) return null;
    final context = focusNode.context;
    if (context == null) return null;
    final findLastFocus =
        FocusTraversalGroup.of(context).findLastFocus(focusNode);

    print("findLastFocus $findLastFocus");

    // Try to find a TextField first
    final textField = context.findAncestorWidgetOfExactType<TextField>() ??
        findLastFocus.context?.findAncestorWidgetOfExactType<TextField>();
    if (textField != null) return textField.controller;

    final textFormField = context
            .findAncestorWidgetOfExactType<TextFormField>() ??
        findLastFocus.context?.findAncestorWidgetOfExactType<TextFormField>();
    if (textFormField != null) return textFormField.controller;

    // Or find an EditableText (used internally by TextField)
    final editableText = context
            .findAncestorWidgetOfExactType<EditableText>() ??
        findLastFocus.context?.findAncestorWidgetOfExactType<EditableText>();
    if (editableText != null) return editableText.controller;

    return null;
  }

  /// Fired when the virtual keyboard key is pressed.
  _onKeyPress(VirtualKeyboardKey key) {
    if (key.keyType == VirtualKeyboardKeyType.String) {
      text = text + ((shiftEnabled ? key.capsText : key.text) ?? '');
    } else if (key.keyType == VirtualKeyboardKeyType.Action) {
      switch (key.action) {
        case VirtualKeyboardKeyAction.Backspace:
          if (text.length == 0) return;
          text = text.substring(0, text.length - 1);
          break;
        case VirtualKeyboardKeyAction.Space:
          text = text + (key.text ?? '');
          break;
        case VirtualKeyboardKeyAction.Shift:
          shiftEnabled = !shiftEnabled;
          break;
        default:
      }
    }
    // Update the screen
    setState(() {});
  }
}
