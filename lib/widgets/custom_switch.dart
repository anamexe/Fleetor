import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flytor/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({
    Key? key,
    required this.onChange,
    this.alignment,
    this.value,
    this.width,
    this.height,
    this.margin,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  bool? value;

  final Function(bool) onChange;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        margin: margin,
        child: alignment != null
            ? Align(
                alignment: alignment ?? Alignment.center,
                child: switchWidget,
              )
            : switchWidget);
  }

  Widget get switchWidget => CupertinoSwitch(
        value: value ?? false,
        trackColor: appTheme.teal400,
        thumbColor: (value ?? false)
            ? theme.colorScheme.onPrimaryContainer
            : theme.colorScheme.onPrimaryContainer,
        activeColor: appTheme.teal400,
        onChanged: (value) {
          onChange(value);
        },
      );
}

// class CupertinoSwitchExample extends StatefulWidget {
//   const CupertinoSwitchExample({super.key});
//
//   @override
//   State<CupertinoSwitchExample> createState() => _CupertinoSwitchExampleState();
// }
//
// class _CupertinoSwitchExampleState extends State<CupertinoSwitchExample> {
//   bool switchValue = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: const CupertinoNavigationBar(
//         middle: Text('CupertinoSwitch Sample'),
//       ),
//       child: Center(
//         child: CupertinoSwitch(
//           // This bool value toggles the switch.
//           value: switchValue,
//           activeColor: CupertinoColors.activeBlue,
//           onChanged: (bool? value) {
//             // This is called when the user toggles the switch.
//             setState(() {
//               switchValue = value ?? false;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }
