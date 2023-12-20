import 'dart:ui';
import 'package:flytor/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientPrimaryToGrayTL81Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [
            theme.colorScheme.primary,
            appTheme.gray90001,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToGrayTL82Decoration => BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 0),
          colors: [
            theme.colorScheme.primary.withOpacity(0.3),
            appTheme.gray90001.withOpacity(0.3),
          ],
        ),
      );
  static BoxDecoration get gradientSecondaryContainerToOnPrimaryDecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment(-0.11, 0),
          end: Alignment(1.01, 0),
          colors: [
            theme.colorScheme.secondaryContainer.withOpacity(0.64),
            theme.colorScheme.onPrimary.withOpacity(0.64),
          ],
        ),
      );
  static BoxDecoration get gradientSecondaryContainerToOnPrimaryTL8Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment(-0.11, 0),
          end: Alignment(1.01, 0),
          colors: [
            theme.colorScheme.secondaryContainer,
            theme.colorScheme.onPrimary,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGray => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
