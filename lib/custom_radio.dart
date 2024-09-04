import 'package:flutter/material.dart';
import 'package:flutterex/enum.dart';

import 'base_color.dart';
import 'base_text_style.dart';
import 'chm_radio_button.dart';
import 'size_config.dart';

class ChmRadioButton extends StatefulWidget {
  final List<ChmRadioButtonModel> radioListModel;

  /// primary, secondary
  final ChmRadioButtonType radioButtonType;
  final Function(dynamic) onSelected;

  /// AlwaysScrollableScrollPhysics (can scroll ), NeverScrollableScrollPhysics (don't can scroll)
  final ScrollPhysics? scrolling;
  final EdgeInsets? paddingRadio;
  final EdgeInsets? paddingIcon;
  final EdgeInsets? paddingList;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;
  final Widget? customDivider;
  final double? paddingTop;
  final double? paddingBottom;
  final double? minHeightItem;
  final Color? colorIcon;
  final bool? isShowRadioButton;
  final bool? isDivider;
  final bool isForceReset;
  final ScrollController? scrollController;
  final ScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  /// leading , platform , trailing
  const ChmRadioButton({
    Key? key,
    required this.radioListModel,
    required this.radioButtonType,
    required this.onSelected,
    this.scrolling,
    this.paddingRadio,
    this.titleTextStyle,
    this.subTitleTextStyle,
    this.colorIcon,
    this.customDivider,
    this.isDivider,
    this.minHeightItem,
    this.paddingIcon,
    this.isForceReset = false,
    this.paddingTop,
    this.paddingBottom,
    this.isShowRadioButton = true,
    this.scrollController,
    this.keyboardDismissBehavior,
    this.paddingList,
  }) : super(key: key);
  @override
  State<ChmRadioButton> createState() => _ChmRadioButtonState();
}
class _ChmRadioButtonState extends State<ChmRadioButton> {
  String? selectedValue;

  setSelectedValue(String val) {
    setState(() {
      selectedValue = val;
    });
    widget.onSelected(val);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: widget.paddingList ?? const EdgeInsets.all(0),
      controller: widget.scrollController,
      keyboardDismissBehavior: widget.keyboardDismissBehavior ??
          ScrollViewKeyboardDismissBehavior.onDrag,
      shrinkWrap: true,
      physics: widget.scrolling ?? const NeverScrollableScrollPhysics(),
      itemCount: widget.radioListModel.length,
      itemBuilder: (BuildContext context, int index) {
        var item = widget.radioListModel[index];
        return Theme(
          data: Theme.of(context).copyWith(
            highlightColor: BaseColors.allNeutralNeutral99,
            splashColor: BaseColors.allNeutralNeutral99,
          ),
          child: Column(
            children: [
              CustomRadio(
                key: ValueKey('${widget.key.stringValue}/$index'),
                value: item.value,
                groupValue: widget.isForceReset ? null : selectedValue,
                onChanged: (data) {
                  setSelectedValue(data.toString());
                  if (widget.radioListModel[index].trackFunction != null) {
                    widget.radioListModel[index].trackFunction!();
                  }
                },
                radioButtonType: widget.radioButtonType,
                image: item.image ?? item.image,
                title: item.title,
                subTitle: item.subtitle,
                isDisable: item.isDisable,
                isChecked: item.isChecked,
                titleTextStyle: widget.titleTextStyle,
                subTitleTextStyle: widget.subTitleTextStyle,
                colorIcon: widget.colorIcon,
                isDivider: widget.isDivider,
                customDivider: widget.customDivider,
                customText: item.customText,
                imageWidget: item.imageWidget,
                paddingRadio: widget.paddingRadio,
                itemTitleTextStyle: item.titleTextStyle,
                itemSubTitleTextStyle: item.subTitleTextStyle,
                minHeightItem: widget.minHeightItem,
                paddingIcon: widget.paddingIcon,
                paddingTop: widget.paddingTop,
                paddingBottom: widget.paddingBottom,
                isShowRadio: widget.isShowRadioButton,
                isSubTitleMaxLines3: item.isSubTitleMaxLines3,
              ),
        if (index != widget.radioListModel.length - 1) 
          widget.customDivider ?? (widget.isDivider == true? Divider() : SizedBox()),
            ],
          ),
        );
      },
    );
  }
}

class CustomRadio extends StatefulWidget {
  final String value;
  final String? groupValue;
  final void Function(String) onChanged;
  final ChmRadioButtonType radioButtonType;
  final String title;
  final bool isDisable;
  final bool isChecked;
  final String? image;
  final String? subTitle;
  final Widget? customDivider;
  final Widget? customText;
  final Widget? imageWidget;
  final EdgeInsets? paddingRadio;
  final EdgeInsets? paddingIcon;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;
  final TextStyle? itemTitleTextStyle;
  final TextStyle? itemSubTitleTextStyle;
  final double? minHeightItem;
  final double? paddingTop;
  final double? paddingBottom;
  final Color? colorIcon;
  final bool? isDivider;
  final bool? isShowRadio;
  final bool? isSubTitleMaxLines3;

  const CustomRadio({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.radioButtonType,
    required this.title,
    required this.isDisable,
    required this.isChecked,
    this.image,
    this.subTitle,
    this.titleTextStyle,
    this.subTitleTextStyle,
    this.colorIcon,
    this.isDivider,
    this.customDivider,
    this.customText,
    this.imageWidget,
    this.paddingRadio,
    this.itemTitleTextStyle,
    this.itemSubTitleTextStyle,
    this.minHeightItem,
    this.paddingIcon,
    this.paddingTop,
    this.paddingBottom,
    this.isShowRadio,
    this.isSubTitleMaxLines3 = false,
  }) : super(key: key);

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  late Widget imageRender;
  @override
  Widget build(BuildContext context) {
    bool selected;
    String valueCheck = widget.isChecked ? widget.value : "";
    String groupValue;
    bool hasSubTitle = false;

    if (widget.isDisable) {
      selected = (widget.isChecked == true ? true : false);
    } else {
      if (widget.isChecked) {
        groupValue =
            (widget.groupValue == null ? valueCheck : widget.groupValue!);
        selected = (valueCheck == groupValue ? true : false);
      } else {
        selected = (widget.value == widget.groupValue);
      }
    }

    if (widget.subTitle != null) {
      hasSubTitle = widget.subTitle!.isNotEmpty;
    }

    var str = widget.image.toString();
    var parts = str.split('_');
    var prefix = parts[0].trim();

    SizeConfig().init(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(
          minHeight: 48),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 12,
          ),
          child: InkWell(
            onTap: () => widget.isDisable
                ? widget.value
                : widget.onChanged(widget.value),
            child: Padding(
              padding: EdgeInsets.only(
                  top: widget.paddingTop != null ? widget.paddingTop! : 0,
                  bottom:
                      widget.paddingBottom != null ? widget.paddingBottom! : 0),
              child: Column(
                children: [
                  Padding(
                    padding: widget.paddingRadio ??
                        const EdgeInsets.only(top: 8, bottom: 8, left: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 6,
                          child: Row(
                            crossAxisAlignment: widget.customText == null
                                ? hasSubTitle
                                    ? CrossAxisAlignment.start
                                    : CrossAxisAlignment.center
                                : CrossAxisAlignment.start,
                            children: [
                              widget.imageWidget != null
                                  ? Opacity(
                                      opacity:
                                          widget.isDisable == true ? 0.3 : 1,
                                      child: widget.imageWidget!,
                                    )
                                  : widget.image != null
                                      ? widget.image != ''
                                          ? Flexible(
                                              flex: 1,
                                              child: Padding(
                                                key: ValueKey(
                                                    '${widget.key.stringValue}/chmIcon'),
                                                padding:
                                                    widget.paddingIcon != null
                                                        ? widget.paddingIcon!
                                                        : const EdgeInsets.only(
                                                            right: 16, top: 2),
                                                child: Opacity(
                                                  opacity: widget.isDisable
                                                      ? prefix == "iconui"
                                                          ? 1
                                                          : 0.3
                                                      : 1,
                                                ),
                                              ),
                                            )
                                          : const Flexible(
                                              flex: 0, child: SizedBox())
                                      : const Flexible(
                                          flex: 0, child: SizedBox()),
                              Flexible(
                                flex: 5,
                                fit: FlexFit.tight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    widget.itemTitleTextStyle != null
                                        ? Text(
                                            key: ValueKey(
                                                '${widget.key.stringValue}/labelText'),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                            widget.title,
                                            style: widget.itemTitleTextStyle ??
                                                _checkTypographyTitle(
                                                    widget.radioButtonType,
                                                    widget.isDisable),
                                          )
                                        : widget.customText != null
                                            ? widget.customText!
                                            : Text(
                                                key: ValueKey(
                                                    '${widget.key.stringValue}/labelText'),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                widget.title,
                                                style: widget.titleTextStyle ??
                                                    _checkTypographyTitle(
                                                        widget.radioButtonType,
                                                        widget.isDisable),
                                              ),
                                    widget.itemSubTitleTextStyle != null
                                        ? hasSubTitle
                                            ? Text(
                                                key: ValueKey(
                                                    '${widget.key.stringValue}/supportingText'),
                                                widget.subTitle!,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines:
                                                    widget.isSubTitleMaxLines3 !=
                                                            true
                                                        ? 2
                                                        : 3,
                                                style: widget
                                                        .itemSubTitleTextStyle ??
                                                    _checkTypographySubTitle(
                                                        widget.radioButtonType,
                                                        widget.isDisable),
                                              )
                                            : SizedBox.fromSize()
                                        : hasSubTitle
                                            ? Text(
                                                key: ValueKey(
                                                    '${widget.key.stringValue}/supportingText'),
                                                widget.subTitle!,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines:
                                                    widget.isSubTitleMaxLines3 !=
                                                            true
                                                        ? 2
                                                        : 3,
                                                style: widget
                                                        .subTitleTextStyle ??
                                                    _checkTypographySubTitle(
                                                        widget.radioButtonType,
                                                        widget.isDisable),
                                              )
                                            : SizedBox.fromSize()
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        widget.isShowRadio == true
                            ? Flexible(
                                flex: 1,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  margin: const EdgeInsets.all(4),
                                  alignment: Alignment.centerRight,
                                  decoration: BoxDecoration(
                                    border: selected
                                        ? Border.all(
                                            width: widget.isDisable ? 2 : 2.5,
                                            color: widget.isDisable
                                                ? BaseColors.allNeutralNeutral70
                                                : BaseColors
                                                    .allPrimaryPrimary60,
                                          )
                                        : Border.all(
                                            width: 2,
                                            color: widget.isDisable
                                                ? BaseColors.allNeutralNeutral70
                                                : BaseColors
                                                    .allPrimaryPrimary10,
                                          ),
                                    shape: BoxShape.circle,
                                    color: selected
                                        ? widget.isDisable
                                            ? BaseColors.whiteColor
                                            : BaseColors.allPrimaryPrimary60
                                        : null,
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 12,
                                      height: 12,
                                      margin: const EdgeInsets.all(2),
                                      alignment: Alignment.centerRight,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: selected
                                            ? widget.isDisable
                                                ? BaseColors.allNeutralNeutral70
                                                : BaseColors.allPrimaryPrimary10
                                            : null,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
TextStyle? _checkTypographyTitle(ChmRadioButtonType type, bool isDisabled) {
  switch (type) {
    case ChmRadioButtonType.primary:
      return isDisabled != true
          ? BaseTextStyle.bodyRegular.copyWith(color: BaseColors.neutralText)
          : BaseTextStyle.bodyRegular.copyWith(color: BaseColors.textDisable);
    case ChmRadioButtonType.secondary:
      return isDisabled != true
          ? BaseTextStyle.bodyMediumMedium
              .copyWith(color: BaseColors.neutralText)
          : BaseTextStyle.bodyMediumMedium
              .copyWith(color: BaseColors.textDisable);
  }
}
extension GetStringValue on Key? {
  String get stringValue {
    if (this != null) {
      String? unTrimmedKey = this.toString();
      // Use a regular expression to find the desired pattern
      RegExp pattern = RegExp(r"<'(.*?)'>");
      Match? match = pattern.firstMatch(unTrimmedKey);

      // If a match is found, return the matched group; otherwise, return the original input
      return match?.group(1) ?? unTrimmedKey;
    } else {
      return 'null';
    }
  }
}

TextStyle? _checkTypographySubTitle(ChmRadioButtonType type, bool isDisabled) {
  switch (type) {
    case ChmRadioButtonType.primary:
      return isDisabled != true
          ? BaseTextStyle.bodyMediumRegular
              .copyWith(color: BaseColors.textSubdued)
          : BaseTextStyle.bodyMediumRegular
              .copyWith(color: BaseColors.textDisable);
    case ChmRadioButtonType.secondary:
      return isDisabled != true
          ? BaseTextStyle.bodyMediumRegular
              .copyWith(color: BaseColors.textSubdued)
          : BaseTextStyle.bodyMediumRegular
              .copyWith(color: BaseColors.textDisable);
  }
}
