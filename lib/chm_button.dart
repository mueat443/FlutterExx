// ignore_for_file: sort_child_properties_last, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutterex/base_color.dart';
import 'package:flutterex/base_text_style.dart';

import 'base_elevation.dart';
import 'enum.dart';


// ignore: must_be_immutable
class ChmButton extends StatefulWidget {
  final ThemeButton theme;
  final StyleButton style;
  final SizeButton size;
  final StateButton state;
  final String title;
  late double? buttonHeight;
  late double? buttonWidth;
  final Color? titleColor;
  final double? fontSize;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? shadowColor;
  final String? prefixIcon;
  final String? suffixIcon;
  late double? borderRadius;
  final Color? borderColor;

  /// padding for cbmbutton
  EdgeInsetsGeometry? padding;
  late bool? textcenter;
  final EdgeInsets? marginicon;
  final Color? iconColor;
  final String? imageName;
  final int maxLines;

  ChmButton({
    super.key,
    required this.theme,
    required this.style,
    required this.size,
    required this.state,
    required this.title,
    this.buttonHeight,
    this.buttonWidth,
    @Deprecated('titleColor is no longer') this.titleColor,
    this.fontSize,
    this.onPressed,
    @Deprecated('backgroundColor is no longer') this.backgroundColor,
    @Deprecated('shadowColor is no longer') this.shadowColor,
    this.prefixIcon,
    this.suffixIcon,
    @Deprecated('borderRadius is no longer') this.borderRadius,
    @Deprecated('borderColor is no longer') this.borderColor,
    this.padding,
    this.textcenter = true,
    this.marginicon,
    @Deprecated('iconColor is no longer') this.iconColor,
    this.imageName,
    this.maxLines = 1,
  });

  @override
  State<ChmButton> createState() => _ChmButtonState();
}

class _ChmButtonState extends State<ChmButton> {
  double defaultHeightSmall = 32.0;
  double defaultBorderRadiusSmall = 10;
  double defaultHeightLarge = 48.0;
  double defaultBorderRadiusLarge = 16;

  double defaultPaddingLeftLarge = 16;
  double defaultPaddingRightLarge = 16;
  double defaultPaddingLeftSmall = 12;
  double defaultPaddingRightSmall = 12;

  double defaultPaddingTopLarge = 8;
  double defaultPaddingBottomLarge = 8;
  double defaultPaddingTopSmall = 4;
  double defaultPaddingBottomSmall = 4;

  double? defaultIconSize;

  var iconCode;
  Widget? styleButton;

  var colorBackgroundPress;
  var colorBackground;

  var colorTitlePress;
  var colorTitle;
  var colorBorderPress;
  var colorBorder;

  bool buttonHover = true;

  var imageRender;
  var imageRenderSuffix;
  Color? iconColor;
  double? iconSize;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // changeColorViaStyle();
    _changColorViaStyle2();
    defaultConfig();
    return Container(child: styleButton);
  }

  // style Button
  Widget filledButton(Widget child) {
    return InkWell(
      highlightColor: Colors.transparent,
      hoverColor: colorBackground ?? colorBackgroundPress,
      splashColor: colorBackground ?? colorBackgroundPress,
      focusColor: colorBackground ?? colorBackgroundPress,
      child: Container(
        // height: widget.buttonHeight,
        constraints: BoxConstraints(
          minHeight: widget.buttonHeight ??
              (widget.size == SizeButton.small
                  ? defaultHeightSmall
                  : defaultHeightLarge),
          maxHeight: widget.maxLines > 1
              ? double.infinity
              : widget.buttonHeight ??
                  (widget.size == SizeButton.small
                      ? defaultHeightSmall
                      : defaultHeightLarge),
        ),
        width: widget.buttonWidth,
        padding: widget.padding,
        decoration: BoxDecoration(
          color: buttonHover ? colorBackground : colorBackgroundPress,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 16),
        ),

        child: (widget.prefixIcon != null)
            ? child
            : (widget.suffixIcon != null)
                ? child
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      child,
                    ],
                  ),
      ),
      onTap: widget.state == StateButton.enabled ? widget.onPressed : () {},
      onTapDown: widget.onPressed != null
          ? (event) {
              setState(() {
                buttonHover = !buttonHover;
                colorBackground = colorBackgroundPress;
                colorTitle = colorTitlePress;
                colorBorder = colorBorderPress;
              });
            }
          : null,
      onTapUp: widget.onPressed != null
          ? (event) {
              setState(() {
                buttonHover = !buttonHover;
                colorBackground = colorBackgroundPress;
                colorTitle = colorTitlePress;
                colorBorder = colorBorderPress;
              });
            }
          : null,
      onTapCancel: widget.onPressed != null
          ? () {
              widget.onPressed;

              setState(() {
                buttonHover = !buttonHover;
                colorBackground = colorBackgroundPress;
                colorTitle = colorTitlePress;
                colorBorder = colorBorderPress;
              });
            }
          : null,
      borderRadius: BorderRadius.circular(widget.borderRadius ?? 16),
    );
  }

  Widget outlinedButton(Widget child) {
    return InkWell(
      hoverColor: colorBackground ?? colorBackgroundPress,
      splashColor: colorBackground ?? colorBackgroundPress,
      focusColor: colorBackground ?? colorBackgroundPress,
      highlightColor: Colors.transparent,
      child: Container(
        // height: widget.buttonHeight,
        constraints: BoxConstraints(
          minHeight: widget.buttonHeight ??
              (widget.size == SizeButton.small
                  ? defaultHeightSmall
                  : defaultHeightLarge),
          maxHeight: widget.maxLines > 1
              ? double.infinity
              : widget.buttonHeight ??
                  (widget.size == SizeButton.small
                      ? defaultHeightSmall
                      : defaultHeightLarge),
        ),
        width: widget.buttonWidth,
        padding: widget.padding,
        decoration: BoxDecoration(
          color: buttonHover ? colorBackground : colorBackgroundPress,
          borderRadius: BorderRadius.circular(widget.borderRadius ?? 16),
          border: Border.all(
              width: 1, color: buttonHover ? colorBorder : colorBorderPress),
        ),

        child: (widget.prefixIcon != null)
            ? child
            : (widget.suffixIcon != null)
                ? child
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      child,
                    ],
                  ),
        // child: widget.textcenter == false ? child : child,
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     widget.textcenter == false
        //         ? child
        //         : Center(
        //             child: child,
        //           ),
        //   ],
        // ),
      ),
      onTap: widget.state == StateButton.enabled ? widget.onPressed : () {},
      onTapDown: widget.onPressed != null
          ? (event) {
              setState(() {
                buttonHover = !buttonHover;
                colorBackground = colorBackgroundPress;
                colorTitle = colorTitlePress;
                colorBorder = colorBorderPress;
              });
            }
          : null,
      onTapUp: widget.onPressed != null
          ? (event) {
              setState(() {
                buttonHover = !buttonHover;
                colorBackground = colorBackgroundPress;
                colorTitle = colorTitlePress;
                colorBorder = colorBorderPress;
              });
            }
          : null,
      onTapCancel: widget.onPressed != null
          ? () {
              setState(() {
                buttonHover = !buttonHover;
                colorBackground = colorBackgroundPress;
                colorTitle = colorTitlePress;
                colorBorder = colorBorderPress;
              });
            }
          : null,
    );
  }

  Widget textButton(Widget child) {
    return InkWell(
      child: Container(
        width: widget.buttonWidth,
        constraints: BoxConstraints(
          minHeight: widget.buttonHeight ??
              (widget.size == SizeButton.small
                  ? defaultHeightSmall
                  : defaultHeightLarge),
          maxHeight: widget.maxLines > 1
              ? double.infinity
              : widget.buttonHeight ??
                  (widget.size == SizeButton.small
                      ? defaultHeightSmall
                      : defaultHeightLarge),
        ),
        padding: widget.padding,
        child: (widget.prefixIcon != null)
            ? child
            : (widget.suffixIcon != null)
                ? child
                : Row(
                    mainAxisAlignment: widget.textcenter == true
                        ? MainAxisAlignment.center
                        : MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      child,
                    ],
                  ),
      ),
      onTap: widget.state == StateButton.enabled ? widget.onPressed : () {},
      onTapDown: widget.onPressed != null
          ? (event) {
              setState(() {
                buttonHover = !buttonHover;
                colorTitle = colorTitlePress;
              });
            }
          : null,
      onTapUp: widget.onPressed != null
          ? (event) {
              setState(() {
                buttonHover = !buttonHover;
                colorTitle = colorTitlePress;
              });
            }
          : null,
      onTapCancel: widget.onPressed != null
          ? () {
              widget.onPressed;
              setState(() {
                buttonHover = !buttonHover;
                colorTitle = colorTitlePress;
              });
            }
          : null,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
    );
  }

  Widget elevatedButton(Widget child) {
    return InkWell(
      hoverColor: colorBackground ?? colorBackgroundPress,
      splashColor: Colors.transparent,
      focusColor: colorBackground ?? colorBackgroundPress,
      highlightColor: Colors.transparent,
      child: Container(
        // height: widget.buttonHeight,
        constraints: BoxConstraints(
          minHeight: widget.buttonHeight ??
              (widget.size == SizeButton.small
                  ? defaultHeightSmall
                  : defaultHeightLarge),
          maxHeight: widget.maxLines > 1
              ? double.infinity
              : widget.buttonHeight ??
                  (widget.size == SizeButton.small
                      ? defaultHeightSmall
                      : defaultHeightLarge),
        ),
        width: widget.buttonWidth,
        padding: widget.padding,
        decoration: widget.state == StateButton.enabled
            ? BoxDecoration(
                boxShadow: buttonHover
                    ? BaseElevation.elevationlight3
                    : BaseElevation.elevationlight1,
                color: buttonHover ? colorBackground : colorBackgroundPress,
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 16),
              )
            : BoxDecoration(
                color: colorBackgroundPress,
                borderRadius: BorderRadius.circular(widget.borderRadius ?? 16),
              ),

        child: (widget.prefixIcon != null)
            ? child
            : (widget.suffixIcon != null)
                ? child
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      child,
                    ],
                  ),
      ),
      onTap: widget.state == StateButton.enabled ? widget.onPressed : () {},
      onTapDown: widget.onPressed != null
          ? (event) {
              setState(() {
                buttonHover = !buttonHover;
                colorBackground = colorBackgroundPress;
                colorTitle = colorTitlePress;
                colorBorder = colorBorderPress;
              });
            }
          : null,
      onTapUp: widget.onPressed != null
          ? (event) {
              setState(() {
                buttonHover = !buttonHover;
                colorBackground = colorBackgroundPress;
                colorTitle = colorTitlePress;
                colorBorder = colorBorderPress;
              });
            }
          : null,
      onTapCancel: widget.onPressed != null
          ? () {
              setState(() {
                buttonHover = !buttonHover;
                colorBackground = colorBackgroundPress;
                colorTitle = colorTitlePress;
                colorBorder = colorBorderPress;
              });
            }
          : null,
    );
  }

  // Icon prefix & suffix
  // Widget prefixSuffixHave() {
  //   checkImage(widget.prefixIcon.toString());
  //   checkImageSuffix(widget.suffixIcon.toString());
  //   return Row(
  //     mainAxisSize: MainAxisSize.min,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         width: defaultIconSize,
  //         height: defaultIconSize,
  //         margin: widget.marginicon ?? const EdgeInsets.only(right: 16),
  //         child: imageRender,
  //       ),
  //       Flexible(
  //         child: Text(
  //           key: ValueKey('${widget.key.stringValue}/textButton'),
  //           widget.title.toString(),
  //           maxLines: widget.maxLines,
  //           textAlign: TextAlign.center,
  //           style: widget.size == SizeButton.large
  //               ? BaseTextStyle.bodyBold.copyWith(
  //                   fontSize: widget.fontSize,
  //                   color: buttonHover ? colorTitle : colorTitlePress,
  //                 )
  //               : BaseTextStyle.bodyMediumBold.copyWith(
  //                   fontSize: widget.fontSize,
  //                   color: buttonHover ? colorTitle : colorTitlePress,
  //                   fontWeight: FontWeight.w700,
  //                 ),
  //         ),
  //       ),
  //       Container(
  //         width: defaultIconSize,
  //         height: defaultIconSize,
  //         margin: widget.marginicon ?? const EdgeInsets.only(left: 16),
  //         child: imageRenderSuffix,
  //       ),
  //     ],
  //   );
  // }

  // Widget prefixOnly() {
  //   checkImage(widget.prefixIcon.toString());
  //   return Row(
  //     mainAxisSize: MainAxisSize.min,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         width: defaultIconSize,
  //         height: defaultIconSize,
  //         margin: widget.marginicon ?? const EdgeInsets.only(right: 8),
  //         child: imageRender,
  //       ),
  //       Flexible(
  //         child: Text(
  //           textAlign: TextAlign.center,
  //           key: ValueKey('${widget.key.stringValue}/textButton'),
  //           widget.title.toString(),
  //           maxLines: widget.maxLines,
  //           style: widget.size == SizeButton.large
  //               ? BaseTextStyle.bodyBold.copyWith(
  //                   fontSize: widget.fontSize,
  //                   color: buttonHover ? colorTitle : colorTitlePress,
  //                 )
  //               : BaseTextStyle.bodyMediumBold.copyWith(
  //                   fontSize: widget.fontSize,
  //                   color: buttonHover ? colorTitle : colorTitlePress,
  //                   fontWeight: FontWeight.w700,
  //                 ),
  //         ),
  //       ),
  //       SizedBox(width: 8),
  //     ],
  //   );
  // }

  // Widget suffixOnly() {
  //   checkImageSuffix(widget.suffixIcon.toString());
  //   return Row(
  //     mainAxisSize: MainAxisSize.min,
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       widget.textcenter == true ? SizedBox(width: 8) : SizedBox.shrink(),
  //       Flexible(
  //         child: Text(
  //           key: ValueKey('${widget.key.stringValue}/textButton'),
  //           widget.title.toString(),
  //           maxLines: widget.maxLines,
  //           textAlign: TextAlign.center,
  //           style: widget.size == SizeButton.large
  //               ? BaseTextStyle.bodyBold.copyWith(
  //                   fontSize: widget.fontSize,
  //                   color: buttonHover ? colorTitle : colorTitlePress,
  //                 )
  //               : BaseTextStyle.bodyMediumBold.copyWith(
  //                   fontSize: widget.fontSize,
  //                   color: buttonHover ? colorTitle : colorTitlePress,
  //                   fontWeight: FontWeight.w700,
  //                 ),
  //         ),
  //       ),
  //       Container(
  //         width: defaultIconSize,
  //         height: defaultIconSize,
  //         margin: widget.marginicon ?? const EdgeInsets.only(left: 8),
  //         child: imageRenderSuffix,
  //       ),
  //     ],
  //   );
  // }

  Widget textOnly() {
    return Flexible(
      child: Text(
        key: ValueKey('button_continueSelectLanguage/textButton'),
        widget.title,
        maxLines: widget.maxLines,
        style: widget.size == SizeButton.large
            ? BaseTextStyle.bodyBold.copyWith(
                fontSize: widget.fontSize,
                color: buttonHover ? colorTitle : colorTitlePress,
              )
            : BaseTextStyle.bodyMediumBold.copyWith(
                fontSize: widget.fontSize,
                color: buttonHover ? colorTitle : colorTitlePress,
                fontWeight: FontWeight.w700,
              ),
      ),
    );
    // return Row(
    //   mainAxisSize: MainAxisSize.min,
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Container(
    //       margin: widget.marginicon ?? const EdgeInsets.all(0),
    //     ),

    //     Flexible(
    //       child: Container(
    //         alignment: Alignment.center,
    //         child: Text(
    //           key: ValueKey('${widget.key.stringValue}/textButton'),
    //           widget.title.toString(),
    //           style: widget.size == SizeButton.large
    //               ? BaseTextStyle.bodyBold.copyWith(
    //                   fontSize: widget.fontSize,
    //                   color: buttonHover ? colorTitle : colorTitlePress,
    //                 )
    //               : BaseTextStyle.bodyMediumBold.copyWith(
    //                   fontSize: widget.fontSize,
    //                   color: buttonHover ? colorTitle : colorTitlePress,
    //                   fontWeight: FontWeight.w700,
    //                 ),
    //                 overflow: TextOverflow.ellipsis,
    //         ),
    //       ),
    //     ),
    //     Container(
    //       margin: widget.marginicon ?? const EdgeInsets.all(0),
    //     ),
    //   ],
    // );
  }

  // void checkImage(String image) {
  //   if (checkMatch(image)) {
  //     imageRender = CoreMedia.cachedImage(
  //       CoreMediaOptImage(
  //         width: defaultIconSize,
  //         height: defaultIconSize,
  //         imageUrl: image,
  //         fit: BoxFit.contain,
  //         errorImage:
  //             'packages/ui_style/assets/icons/chm_image/image_square_default_myais.png',
  //       ),
  //     );
  //   } else {
  //     imageRender = ChmIcon(
  //       key: ValueKey('${widget.key.stringValue}/chmIcon/prefix'),
  //       keyIconName: image,
  //       width: defaultIconSize,
  //       height: defaultIconSize,
  //       fit: BoxFit.contain,
  //       iconMapSize:
  //           widget.iconMapSize != null ?? widget.size == SizeButton.large
  //               ? IconMapSize.large
  //               : IconMapSize.small,
  //       color: buttonHover ? colorTitle : colorTitlePress,
  //       filterQuality: FilterQuality.medium,
  //     );
  //   }
  // }

  // void checkImageSuffix(String image) {
  //   if (checkMatch(image)) {
  //     imageRenderSuffix = CoreMedia.cachedImage(
  //       CoreMediaOptImage(
  //         width: defaultIconSize,
  //         height: defaultIconSize,
  //         imageUrl: image,
  //         fit: BoxFit.contain,
  //         errorImage:
  //             'packages/ui_style/assets/icons/chm_image/image_square_default_myais.png',
  //       ),
  //     );
  //   } else {
  //     imageRenderSuffix = ChmIcon(
  //        key: ValueKey('${widget.key.stringValue}/chmIcon/suffix'),
  //       keyIconName: image,
  //       width: defaultIconSize,
  //       height: defaultIconSize,
  //       fit: BoxFit.contain,
  //       iconMapSize:
  //           widget.iconMapSize != null ?? widget.size == SizeButton.large
  //               ? IconMapSize.large
  //               : IconMapSize.small,
  //       color: buttonHover ? colorTitle : colorTitlePress,
  //       filterQuality: FilterQuality.medium,
  //     );
  //   }
  // }

  void _changColorViaStyle2() {
    if (widget.state == StateButton.enabled) {
      switch (widget.style) {
        case StyleButton.filled:
          switch (widget.theme) {
            case ThemeButton.primary:
              colorBackgroundPress = BaseColors.primaryPressed;
              colorTitlePress = BaseColors.allPrimaryPrimary100;
              colorBorderPress = BaseColors.primaryPressed;

              colorBackground = BaseColors.primaryPrimary;
              colorTitle = BaseColors.allPrimaryPrimary10;
              colorBorder = BaseColors.primaryPrimary;
              break;
            case ThemeButton.warning:
              colorBackgroundPress = BaseColors.warningPressed;
              colorTitlePress = BaseColors.allWarningWarning100;
              colorBorderPress = BaseColors.warningPressed;
              iconColor = BaseColors.allWarningWarning100;

              colorBackground = BaseColors.warningWarning;
              colorTitle = BaseColors.warningOnSurface;
              colorBorder = BaseColors.warningWarning;
              break;
            case ThemeButton.error:
              colorBackgroundPress = BaseColors.errorPressed;
              colorTitlePress = BaseColors.allErrorError100;
              colorBorderPress = BaseColors.errorPressed;

              colorBackground = BaseColors.errorError;
              colorTitle = BaseColors.allErrorError100;
              colorBorder = BaseColors.errorError;
              break;
            case ThemeButton.success:
              colorBackgroundPress = BaseColors.successPressed;
              colorTitlePress = BaseColors.allSuccessSuccess100;
              colorBorderPress = BaseColors.successPressed;

              colorBackground = BaseColors.successSuccess;
              colorTitle = BaseColors.allSuccessSuccess10;
              colorBorder = BaseColors.successSuccess;
              break;
            case ThemeButton.neutral:
              colorBackgroundPress = BaseColors.allNeutralNeutral100;
              colorTitlePress = BaseColors.tempNeutral40;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.allNeutralNeutral100;
              colorTitle = BaseColors.allNeutralNeutral10;
              colorBorder = BaseColors.transparent;
              break;
          }
          break;
        case StyleButton.outlined:
          switch (widget.theme) {
            case ThemeButton.primary:
              colorBackgroundPress = BaseColors.surfacelight5;
              colorTitlePress = BaseColors.primaryPressed;
              colorBorderPress = BaseColors.primaryPressed;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.allPrimaryPrimary10;
              colorBorder = BaseColors.allPrimaryPrimary10;
              break;
            case ThemeButton.warning:
              colorBackgroundPress = BaseColors.allWarningWarning95;
              colorTitlePress = BaseColors.warningPressed;
              colorBorderPress = BaseColors.warningPressed;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.allWarningWarning10;
              colorBorder = BaseColors.allWarningWarning10;
              break;
            case ThemeButton.error:
              colorBackgroundPress = BaseColors.allErrorError99;
              colorTitlePress = BaseColors.errorPressed;
              colorBorderPress = BaseColors.errorPressed;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.allErrorError10;
              colorBorder = BaseColors.allErrorError10;
              break;
            case ThemeButton.success:
              colorBackgroundPress = BaseColors.surfacelight5;
              colorTitlePress = BaseColors.primaryPressed;
              colorBorderPress = BaseColors.primaryPressed;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.allPrimaryPrimary10;
              colorBorder = BaseColors.allPrimaryPrimary10;
              break;
            case ThemeButton.neutral:
              colorBackgroundPress = BaseColors.surfacelight5;
              colorTitlePress = BaseColors.primaryPressed;
              colorBorderPress = BaseColors.primaryPressed;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.allNeutralNeutral10;
              colorBorder = BaseColors.allNeutralNeutral0;
              break;
          }

          break;
        case StyleButton.text:
          switch (widget.theme) {
            case ThemeButton.primary:
              colorBackgroundPress = BaseColors.transparent;
              colorTitlePress = BaseColors.primaryPressed;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.allPrimaryPrimary30;
              colorBorder = BaseColors.transparent;
              break;
            case ThemeButton.warning:
              colorBackgroundPress = BaseColors.transparent;
              colorTitlePress = BaseColors.warningPressed;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.allWarningWarning30;
              colorBorder = BaseColors.transparent;
              break;
            case ThemeButton.error:
              colorBackgroundPress = BaseColors.transparent;
              colorTitlePress = BaseColors.errorPressed;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.errorError;
              colorBorder = BaseColors.transparent;
              break;
            case ThemeButton.success:
              colorBackgroundPress = BaseColors.transparent;
              colorTitlePress = BaseColors.successPressed;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.allSuccessSuccess30;
              colorBorder = BaseColors.transparent;
              break;
            case ThemeButton.neutral:
              colorBackgroundPress = BaseColors.transparent;
              colorTitlePress = BaseColors.allSuccessSuccess40;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.transparent;
              colorTitle = BaseColors.allNeutralNeutral10;
              colorBorder = BaseColors.transparent;
              break;
          }
          break;

        case StyleButton.elevated:
          switch (widget.theme) {
            case ThemeButton.primary:
              colorBackgroundPress = BaseColors.primaryPressed;
              colorTitlePress = BaseColors.allPrivilegesPrivileges100;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.primaryPrimary;
              colorTitle = BaseColors.allPrimaryPrimary10;
              colorBorder = BaseColors.transparent;
              break;
            case ThemeButton.warning:
              colorBackgroundPress = BaseColors.warningPressed;
              colorTitlePress = BaseColors.allWarningWarning100;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.warningWarning;
              colorTitle = BaseColors.warningOnSurface;
              colorBorder = BaseColors.transparent;
              break;
            case ThemeButton.error:
              colorBackgroundPress = BaseColors.errorPressed;
              colorTitlePress = BaseColors.allErrorError100;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.errorError;
              colorTitle = BaseColors.allErrorError100;
              colorBorder = BaseColors.transparent;
              break;
            case ThemeButton.success:
              colorBackgroundPress = BaseColors.successPressed;
              colorTitlePress = BaseColors.allSuccessSuccess100;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.successSuccess;
              colorTitle = BaseColors.allSuccessSuccess10;
              colorBorder = BaseColors.transparent;
              break;
            case ThemeButton.neutral:
              colorBackgroundPress = BaseColors.surfacelight5;
              colorTitlePress = BaseColors.tempNeutral40;
              colorBorderPress = BaseColors.transparent;

              colorBackground = BaseColors.whiteColor;
              colorTitle = BaseColors.allNeutralNeutral10;
              colorBorder = BaseColors.transparent;
              break;
          }
          break;

        default:
      }
    } else {
      switch (widget.style) {
        case StyleButton.filled:
          colorBackgroundPress = BaseColors.disableBackground;
          colorTitlePress = BaseColors.textDisable;
          colorBorderPress = BaseColors.disableBackground;

          colorBackground = BaseColors.disableBackground;
          colorTitle = BaseColors.textDisable;
          colorBorder = BaseColors.disableBackground;
          break;
        case StyleButton.outlined:
          colorBackgroundPress = BaseColors.transparent;
          colorTitlePress = BaseColors.textDisable;
          colorBorderPress = BaseColors.textDisable;

          colorBackground = BaseColors.transparent;
          colorTitle = BaseColors.textDisable;
          colorBorder = BaseColors.textDisable;
          break;
        case StyleButton.text:
          colorBackgroundPress = BaseColors.transparent;
          colorTitlePress = BaseColors.textDisable;
          colorBorderPress = BaseColors.transparent;

          colorBackground = BaseColors.transparent;
          colorTitle = BaseColors.textDisable;
          colorBorder = BaseColors.transparent;
          break;
        case StyleButton.elevated:
          colorBackgroundPress = BaseColors.disableBackground;
          colorTitlePress = BaseColors.textDisable;
          colorBorderPress = BaseColors.disableBackground;

          colorBackground = BaseColors.disableBackground;
          colorTitle = BaseColors.textDisable;
          colorBorder = BaseColors.disableBackground;
          break;
      }
    }
  }

  void changeColorViaStyle() {
    setState(() {
      if (widget.state == StateButton.enabled) {
        if (widget.style == StyleButton.filled) {
          if (widget.theme == ThemeButton.primary) {
            colorBackgroundPress = BaseColors.primaryPressed;
            colorTitlePress = BaseColors.allPrimaryPrimary100;
            colorBorderPress = BaseColors.primaryPressed;
            // iconColor = BaseColors.allPrimaryPrimary100;

            colorBackground = BaseColors.primaryPrimary;
            colorTitle = BaseColors.allPrimaryPrimary10;
            colorBorder = BaseColors.primaryPrimary;
            // widget.iconColor = BaseColors.allPrimaryPrimary10;
          } else if (widget.theme == ThemeButton.warning) {
            colorBackgroundPress = BaseColors.warningPressed;
            colorTitlePress = BaseColors.allWarningWarning100;
            colorBorderPress = BaseColors.warningPressed;
            iconColor = BaseColors.allWarningWarning100;

            colorBackground = BaseColors.warningWarning;
            colorTitle = BaseColors.warningOnSurface;
            colorBorder = BaseColors.warningWarning;
          } else if (widget.theme == ThemeButton.error) {
            colorBackgroundPress = BaseColors.errorPressed;
            colorTitlePress = BaseColors.allErrorError100;
            colorBorderPress = BaseColors.errorPressed;

            colorBackground = BaseColors.errorError;
            colorTitle = BaseColors.allErrorError100;
            colorBorder = BaseColors.errorError;
          } else if (widget.theme == ThemeButton.success) {
            colorBackgroundPress = BaseColors.successPressed;
            colorTitlePress = BaseColors.allSuccessSuccess100;
            colorBorderPress = BaseColors.successPressed;

            colorBackground = BaseColors.successSuccess;
            colorTitle = BaseColors.allSuccessSuccess10;
            colorBorder = BaseColors.successSuccess;
          } else if (widget.theme == ThemeButton.neutral) {
            colorBackgroundPress = BaseColors.allNeutralNeutral100;
            colorTitlePress = BaseColors.tempNeutral40;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.allNeutralNeutral100;
            colorTitle = BaseColors.allNeutralNeutral10;
            colorBorder = BaseColors.transparent;
          }
        } else if (widget.style == StyleButton.outlined) {
          if (widget.theme == ThemeButton.primary) {
            colorBackgroundPress = BaseColors.surfacelight5;
            colorTitlePress = BaseColors.primaryPressed;
            colorBorderPress = BaseColors.primaryPressed;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.allPrimaryPrimary10;
            colorBorder = BaseColors.allPrimaryPrimary10;
          } else if (widget.theme == ThemeButton.warning) {
            colorBackgroundPress = BaseColors.allWarningWarning95;
            colorTitlePress = BaseColors.warningPressed;
            colorBorderPress = BaseColors.warningPressed;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.allWarningWarning10;
            colorBorder = BaseColors.allWarningWarning10;
          } else if (widget.theme == ThemeButton.error) {
            colorBackgroundPress = BaseColors.allErrorError99;
            colorTitlePress = BaseColors.errorPressed;
            colorBorderPress = BaseColors.errorPressed;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.allErrorError10;
            colorBorder = BaseColors.allErrorError10;
          } else if (widget.theme == ThemeButton.success) {
            colorBackgroundPress = BaseColors.surfacelight5;
            colorTitlePress = BaseColors.primaryPressed;
            colorBorderPress = BaseColors.primaryPressed;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.allPrimaryPrimary10;
            colorBorder = BaseColors.allPrimaryPrimary10;
          } else if (widget.theme == ThemeButton.neutral) {
            colorBackgroundPress = BaseColors.surfacelight5;
            colorTitlePress = BaseColors.primaryPressed;
            colorBorderPress = BaseColors.primaryPressed;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.allNeutralNeutral10;
            colorBorder = BaseColors.allNeutralNeutral0;
          }
        } else if (widget.style == StyleButton.text) {
          if (widget.theme == ThemeButton.primary) {
            colorBackgroundPress = BaseColors.transparent;
            colorTitlePress = BaseColors.primaryPressed;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.allPrimaryPrimary30;
            colorBorder = BaseColors.transparent;
          } else if (widget.theme == ThemeButton.warning) {
            colorBackgroundPress = BaseColors.transparent;
            colorTitlePress = BaseColors.warningPressed;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.allWarningWarning30;
            colorBorder = BaseColors.transparent;
          } else if (widget.theme == ThemeButton.error) {
            colorBackgroundPress = BaseColors.transparent;
            colorTitlePress = BaseColors.errorPressed;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.errorError;
            colorBorder = BaseColors.transparent;
          } else if (widget.theme == ThemeButton.success) {
            colorBackgroundPress = BaseColors.transparent;
            colorTitlePress = BaseColors.successPressed;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.allSuccessSuccess30;
            colorBorder = BaseColors.transparent;
          } else if (widget.theme == ThemeButton.neutral) {
            colorBackgroundPress = BaseColors.transparent;
            colorTitlePress = BaseColors.allSuccessSuccess40;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.transparent;
            colorTitle = BaseColors.allNeutralNeutral10;
            colorBorder = BaseColors.transparent;
          }
        } else if (widget.style == StyleButton.elevated) {
          if (widget.theme == ThemeButton.primary) {
            colorBackgroundPress = BaseColors.primaryPressed;
            colorTitlePress = BaseColors.allPrivilegesPrivileges100;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.primaryPrimary;
            colorTitle = BaseColors.allPrimaryPrimary10;
            colorBorder = BaseColors.transparent;
          } else if (widget.theme == ThemeButton.warning) {
            colorBackgroundPress = BaseColors.warningPressed;
            colorTitlePress = BaseColors.allWarningWarning100;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.warningWarning;
            colorTitle = BaseColors.warningOnSurface;
            colorBorder = BaseColors.transparent;
          } else if (widget.theme == ThemeButton.error) {
            colorBackgroundPress = BaseColors.errorPressed;
            colorTitlePress = BaseColors.allErrorError100;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.errorError;
            colorTitle = BaseColors.allErrorError100;
            colorBorder = BaseColors.transparent;
          } else if (widget.theme == ThemeButton.success) {
            colorBackgroundPress = BaseColors.successPressed;
            colorTitlePress = BaseColors.allSuccessSuccess100;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.successSuccess;
            colorTitle = BaseColors.allSuccessSuccess10;
            colorBorder = BaseColors.transparent;
          } else if (widget.theme == ThemeButton.neutral) {
            colorBackgroundPress = BaseColors.surfacelight5;
            colorTitlePress = BaseColors.tempNeutral40;
            colorBorderPress = BaseColors.transparent;

            colorBackground = BaseColors.whiteColor;
            colorTitle = BaseColors.allNeutralNeutral10;
            colorBorder = BaseColors.transparent;
          }
        }
      } else {
        if (widget.style == StyleButton.filled) {
          colorBackgroundPress = BaseColors.disableBackground;
          colorTitlePress = BaseColors.textDisable;
          colorBorderPress = BaseColors.disableBackground;

          colorBackground = BaseColors.disableBackground;
          colorTitle = BaseColors.textDisable;
          colorBorder = BaseColors.disableBackground;
        } else if (widget.style == StyleButton.outlined) {
          colorBackgroundPress = BaseColors.transparent;
          colorTitlePress = BaseColors.textDisable;
          colorBorderPress = BaseColors.textDisable;

          colorBackground = BaseColors.transparent;
          colorTitle = BaseColors.textDisable;
          colorBorder = BaseColors.textDisable;
        } else if (widget.style == StyleButton.text) {
          colorBackgroundPress = BaseColors.transparent;
          colorTitlePress = BaseColors.textDisable;
          colorBorderPress = BaseColors.transparent;

          colorBackground = BaseColors.transparent;
          colorTitle = BaseColors.textDisable;
          colorBorder = BaseColors.transparent;
        } else if (widget.style == StyleButton.elevated) {
          colorBackgroundPress = BaseColors.disableBackground;
          colorTitlePress = BaseColors.textDisable;
          colorBorderPress = BaseColors.disableBackground;

          colorBackground = BaseColors.disableBackground;
          colorTitle = BaseColors.textDisable;
          colorBorder = BaseColors.disableBackground;
        }
      }
    });
  }

  void defaultConfig() {
    setState(() {
      if (widget.size == SizeButton.small) {
        widget.buttonHeight = widget.buttonHeight ?? defaultHeightSmall;
        widget.borderRadius = widget.borderRadius ?? defaultBorderRadiusSmall;
        defaultIconSize = 16;
        if (widget.padding == null) {
          widget.padding = EdgeInsets.only(
            top: defaultPaddingTopSmall,
            bottom: defaultPaddingBottomSmall,
            left: defaultPaddingLeftSmall,
            right: defaultPaddingRightSmall,
          );
        } else {
          widget.padding = widget.padding;
        }
      } else if (widget.size == SizeButton.large) {
        widget.buttonHeight = widget.buttonHeight ?? defaultHeightLarge;
        widget.borderRadius = widget.borderRadius ?? defaultBorderRadiusLarge;
        defaultIconSize = 24;
        if (widget.padding == null) {
          widget.padding = EdgeInsets.only(
            top: defaultPaddingTopLarge,
            bottom: defaultPaddingBottomLarge,
            left: defaultPaddingLeftLarge,
            right: defaultPaddingRightLarge,
          );
        } else {
          widget.padding = widget.padding;
        }
      }

      // if (widget.prefixIcon != null && widget.suffixIcon != null) {
      //   iconCode = prefixSuffixHave();
      // } else if (widget.prefixIcon != null && widget.suffixIcon == null) {
      //   iconCode = prefixOnly();
      // } else if (widget.prefixIcon == null && widget.suffixIcon != null) {
      //   iconCode = suffixOnly();
      // } else if (widget.prefixIcon == null && widget.suffixIcon == null) {
      //   iconCode = textOnly();
      // }
      iconCode = textOnly();

      if (widget.style == StyleButton.filled) {
        styleButton = filledButton(iconCode);
      } else if (widget.style == StyleButton.outlined) {
        styleButton = outlinedButton(iconCode);
      } else if (widget.style == StyleButton.text) {
        styleButton = textButton(iconCode);
      } else if (widget.style == StyleButton.elevated) {
        styleButton = elevatedButton(iconCode);
      }
    });
  }
}
