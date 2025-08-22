import 'package:flutter/material.dart';

/// Padding constants for consistent UI spacing.
class AppPadding {
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;

  /// Shortcut EdgeInsets for padding
  static const EdgeInsets allSmall = EdgeInsets.all(small);
  static const EdgeInsets allMedium = EdgeInsets.all(medium);
  static const EdgeInsets allLarge = EdgeInsets.all(large);

  static const EdgeInsets symmetricVerticalSmall = EdgeInsets.symmetric(
    vertical: small,
  );
  static const EdgeInsets symmetricVerticalMedium = EdgeInsets.symmetric(
    vertical: medium,
  );
  static const EdgeInsets symmetricVerticalLarge = EdgeInsets.symmetric(
    vertical: large,
  );

  static const EdgeInsets symmetricHorizontalSmall = EdgeInsets.symmetric(
    horizontal: small,
  );
  static const EdgeInsets symmetricHorizontalMedium = EdgeInsets.symmetric(
    horizontal: medium,
  );
  static const EdgeInsets symmetricHorizontalLarge = EdgeInsets.symmetric(
    horizontal: large,
  );
}

/// Margin constants for consistent UI spacing.
class AppMargin {
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;

  /// Shortcut EdgeInsets for margin
  static const EdgeInsets allSmall = EdgeInsets.all(small);
  static const EdgeInsets allMedium = EdgeInsets.all(medium);
  static const EdgeInsets allLarge = EdgeInsets.all(large);

  static const EdgeInsets symmetricVerticalSmall = EdgeInsets.symmetric(
    vertical: small,
  );
  static const EdgeInsets symmetricVerticalMedium = EdgeInsets.symmetric(
    vertical: medium,
  );
  static const EdgeInsets symmetricVerticalLarge = EdgeInsets.symmetric(
    vertical: large,
  );

  static const EdgeInsets symmetricHorizontalSmall = EdgeInsets.symmetric(
    horizontal: small,
  );
  static const EdgeInsets symmetricHorizontalMedium = EdgeInsets.symmetric(
    horizontal: medium,
  );
  static const EdgeInsets symmetricHorizontalLarge = EdgeInsets.symmetric(
    horizontal: large,
  );
}

/// Border radius constants for rounded corners.
class AppRadius {
  static const double small = 6.0;
  static const double medium = 12.0;
  static const double large = 20.0;

  static const BorderRadius smallBorder = BorderRadius.all(
    Radius.circular(small),
  );
  static const BorderRadius mediumBorder = BorderRadius.all(
    Radius.circular(medium),
  );
  static const BorderRadius largeBorder = BorderRadius.all(
    Radius.circular(large),
  );
}

/// Predefined SizedBoxes for spacing between widgets.
class AppSpacing {
  // Vertical spacing
  static const SizedBox verticalSmall = SizedBox(height: AppPadding.small);
  static const SizedBox verticalMedium = SizedBox(height: AppPadding.medium);
  static const SizedBox verticalLarge = SizedBox(height: AppPadding.large);

  // Horizontal spacing
  static const SizedBox horizontalSmall = SizedBox(width: AppPadding.small);
  static const SizedBox horizontalMedium = SizedBox(width: AppPadding.medium);
  static const SizedBox horizontalLarge = SizedBox(width: AppPadding.large);
}
