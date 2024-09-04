import 'package:flutter/material.dart';
// import 'package:ui_style/ui_style.dart';

import 'base_color.dart';

class BaseTextStyle {
  BaseTextStyle._();

  static const String fonts = 'DB Heavent';
  static const FontWeight fontWeightRegular = FontWeight.w400;
  static const FontWeight fontWeightMedium = FontWeight.w500;
  static const FontWeight fontWeightBold = FontWeight.w700;

  static const head1Text = TextStyle(
    // fontFamily: 'DB Heavent',
    // fontFamilyFallback: ['NotoSansThaiUI'],
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.2,
    letterSpacing: -0.4,
  );

  static const head2Text = TextStyle(
    // fontFamily: 'DB Heavent',
    // fontFamilyFallback: ['NotoSansThaiUI'],
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.2,
  );

  static const head4Text = TextStyle(
    // fontFamily: 'DB Heavent',
    // fontFamilyFallback: ['NotoSansThaiUI'],
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.2,
  );

  static const body1Text = TextStyle(
    // fontFamily: 'DB Heavent',
    // fontFamilyFallback: ['NotoSansThaiUI'],
    color: BaseColors.neutralText,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.5,
    letterSpacing: -0.2,
  );

  // below update text style

  static const header1 = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 62,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.4,
    // letterSpacing: -0.4,
  );

  static const header2 = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1,
    // letterSpacing: -0.2,
  );

  static const header3 = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.1,
    // letterSpacing: -0.4,
  );

  static const header4 = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.125,
    // letterSpacing: -0.4,
  );

  static const header5 = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.143,
    // letterSpacing: -0.4,
  );

  static const header6 = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.167,
    // letterSpacing: -0.4,
  );

  static const body1 = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.167,
    // letterSpacing: -0.4,
  );

  static const body2 = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.2,
    // letterSpacing: -0.4,
  );

  static const caption = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.2,
    // letterSpacing: -0.4,
  );

  static const keywords = TextStyle(
    // fontFamily: 'DB Heavent',
    color: BaseColors.neutralText,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 0.33,
    // letterSpacing: -0.4,
  );

  // Display-large
  static const displayLargeRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 88,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.046,
    letterSpacing: 0,
  );

  static const displayLargeRegularUnderline = TextStyle(
      // fontFamily: fonts,
      color: BaseColors.neutralText,
      fontSize: 88,
      fontWeight: fontWeightRegular,
      fontStyle: FontStyle.normal,
      leadingDistribution: TextLeadingDistribution.even,
      height: 1.046,
      letterSpacing: 0,
      decoration: TextDecoration.underline);

  static const displayLargeRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 88,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.046,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const displayLargeMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 88,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.046,
    letterSpacing: 0,
  );
  static const displayLargeMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 88,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.046,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const displayLargeMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 88,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.046,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const displayLargeBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 88,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.046,
    letterSpacing: 0,
  );
  static const displayLargeBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 88,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.046,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const displayLargeBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 88,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.046,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  // Display-medium
  static const displayMediumRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 80,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.05,
    letterSpacing: 0,
  );
  static const displayMediumRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 80,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.05,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const displayMediumRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 80,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.05,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const displayMediumMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 80,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.05,
    letterSpacing: 0,
  );
  static const displayMediumMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 80,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.05,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const displayMediumMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 80,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.05,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const displayMediumBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 80,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.05,
    letterSpacing: 0,
  );
  static const displayMediumBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 80,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.05,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const displayMediumBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 80,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.05,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  // Display-small
  static const displaySmallRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 72,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.056,
    letterSpacing: 0,
  );
  static const displaySmallRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 72,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.056,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const displaySmallRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 72,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.056,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const displaySmallMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 72,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.056,
    letterSpacing: 0,
  );
  static const displaySmallMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 72,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.056,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const displaySmallMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 72,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.056,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const displaySmallBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 72,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.056,
    letterSpacing: 0,
  );
  static const displaySmallBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 72,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.056,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const displaySmallBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 72,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.056,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  // Headline-large
  static const headlineLargeRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 64,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0625,
    // height: 3,
    letterSpacing: 0,
  );
  static const headlineLargeRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 64,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0625,
    // height: 3,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const headlineLargeRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 64,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0625,
    // height: 3,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const headlineLargeMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 64,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0625,
    letterSpacing: 0,
  );
  static const headlineLargeMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 64,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0625,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const headlineLargeMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 64,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0625,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const headlineLargeBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 64,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0625,
    letterSpacing: 0,
  );
  static const headlineLargeBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 64,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0625,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const headlineLargeBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 64,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0625,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  // Headline-medium
  static const headlineMediumRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
  );
  static const headlineMediumRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const headlineMediumRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const headlineMediumMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
  );
  static const headlineMediumMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const headlineMediumMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const headlineMediumBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
  );
  static const headlineMediumBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const headlineMediumBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 56,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  // Headline-small
  static const headlineSmallRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 48,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0835,
    letterSpacing: 0,
  );
  static const headlineSmallRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 48,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0835,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const headlineSmallRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 48,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0835,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const headlineSmallMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 48,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0835,
    letterSpacing: 0,
  );
  static const headlineSmallMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 48,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0835,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const headlineSmallMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 48,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0835,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const headlineSmallBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 48,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0835,
    letterSpacing: 0,
  );
  static const headlineSmallBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 48,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0835,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const headlineSmallBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 48,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.0835,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  // Title-large
  static const titleLargeRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1,
    letterSpacing: 0,
  );
  static const titleLargeRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const titleLargeRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const titleLargeMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1,
    letterSpacing: 0,
  );
  static const titleLargeMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const titleLargeMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const titleLargeBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1,
    letterSpacing: 0,
  );
  static const titleLargeBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const titleLargeBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 40,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  // Title-medium
  static const titleMediumRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.125,
    letterSpacing: 0,
  );

  static const titleMediumRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.125,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const titleMediumRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.125,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const titleMediumMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.125,
    letterSpacing: 0,
  );

  static const titleMediumMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.125,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const titleMediumMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.125,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const titleMediumBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.125,
    letterSpacing: 0,
  );

  static const titleMediumBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.125,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const titleMediumBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 32,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.125,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  // Title-small
  static const titleSmallRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1429,
    letterSpacing: 0,
  );

  static const titleSmallRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1429,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const titleSmallRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1429,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const titleSmallMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1429,
    letterSpacing: 0,
  );

  static const titleSmallMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1429,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const titleSmallMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1429,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const titleSmallBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1429,
    letterSpacing: 0,
  );

  static const titleSmallBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1429,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const titleSmallBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 28,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1429,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  //Body
  static const bodyRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1667,
    letterSpacing: 0,
  );

  static const bodyRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1667,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const bodyRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1667,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const bodyMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1667,
    letterSpacing: 0,
  );

  static const bodyMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1667,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const bodyMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1667,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const bodyBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1667,
    letterSpacing: 0,
  );

  static const bodyBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1667,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const bodyBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 24,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.1667,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  //Body-medium
  static const bodyMediumRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
  );

  static const bodyMediumRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const bodyMediumRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const bodyMediumMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
  );

  static const bodyMediumMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  
  static const bodyMediumMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const bodyMediumBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
  );

  static const bodyMediumBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const bodyMediumBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 20,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.2,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  //Body-small

  static const bodySmallRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.25,
    letterSpacing: 0,
  );

  static const bodySmallRegularUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.25,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const bodySmallRegularStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.25,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const bodySmallMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.25,
    letterSpacing: 0,
  );

  static const bodySmallMediumUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.25,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );
  static const bodySmallMediumStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.25,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );

  static const bodySmallBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.25,
    letterSpacing: 0,
  );

  static const bodySmallBoldUnderline = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.25,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  static const bodySmallBoldStrikeThrough = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.25,
    letterSpacing: 0,
    decoration: TextDecoration.lineThrough,
  );
  //lable-Large
  static const lableLargeRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1,
    letterSpacing: 0,
  );

  static const lableLargeMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1,
    letterSpacing: 0,
  );

  static const lableLargeBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 16,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1,
    letterSpacing: 0,
  );

  // Label
  static const lableRegular = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 12,
    fontWeight: fontWeightRegular,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.167,
    letterSpacing: 0,
  );

  static const lableMedium = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 12,
    fontWeight: fontWeightMedium,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.167,
    letterSpacing: 0,
  );

  static const lableBold = TextStyle(
    // fontFamily: fonts,
    color: BaseColors.neutralText,
    fontSize: 12,
    fontWeight: fontWeightBold,
    fontStyle: FontStyle.normal,
    leadingDistribution: TextLeadingDistribution.even,
    height: 1.167,
    letterSpacing: 0,
  );
}
