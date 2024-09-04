// ignore_for_file: constant_identifier_names

enum ChmCheckboxType { primary, secondary, reversed }

enum ChmCheckboxInteractive { enabled, pressed, disabled }

enum ChmCheckboxSelectiveState { selected, indeterminate, unselected }

enum ChmRadioButtonType { primary, secondary }

enum ChmDividerType {
  horizontal,
  vertical,
  horizontalWithText,
  dashedHorizontal
}

enum TypeToast { success, warning, error }

// Button

enum ThemeButton { primary, warning, error, success, neutral }

enum StyleButton { filled, outlined, text, elevated }

enum StateButton { enabled, disabled }

enum SizeButton { small, large }

enum ThemeButtonIcon { primary, warning, error, success, neutral,overlay}

enum StyleButtonIcon { filled, outlined, onlyIcon, elevated }

enum StateButtonIcon { enabled, disabled }

enum SizeButtonIcon { small, large }

enum ThemeButtonIconExtra {
  neutral,
  elevated,
  primary,
  points,
  privileges,
  entertainment,
  store
}

enum StyleButtonIconExtra {
  filled,
  elevated,
  outlined,
}

enum StateButtonIconExtra { enabled, disabled }

enum StateButtonIconNumpad { enabled, pressed }

enum StyleButtonIconNumpad { outlined }

enum StateButtonIconScan { enabled, disabled }

// Badge

enum TypeBadge { dot, number }

enum AlignmentBadge { left, right }

enum SizeBadge { small, large }

enum TypeContent {
  hot_offers, // bestOffers
  newArrival,
  bestService,
  exclusive, // personalize
  freeGift,
  portInOnly, // tierList
  aisOnly,
  studentOnly,
  logo5G,
  aisBestBuy,
  serenade,
  platinum,
  gold,
  emerald,
  aisPoint, // add more
  postpaid,
  prepaid,
  privilege,
}

enum ThemeColorBadge { points, privileges, notify }

enum TabFixedType {
  tabLabelWithIcon,
  tabIcon,
  tabLabel,
}

enum FixedIndicatorColor {
  primary,
  secondary,
}

enum TabScrollableType {
  tabLabelWithIcon,
  tabIcon,
  tabLabel,
}

enum ScrollableIndicatorColor {
  primary,
  secondary,
}

enum StyleAvatar { cricle, square }

enum SizedAvatar {
  xxl,
  xl,
  lg,
  md,
  sm,
  xs,
  xxs,
}

enum StateDropdown { enabled, filled, pressed, disabled, error }

// content switcher

enum ThemeContentSwitcher { primary, secondary }

enum StyleContentSwitcher {
  iconandlabel,
  labelonly,
  icononly,
  labelonlytwoline
}

// Bottom Sheet

enum BottomSheetContent { radio, checkbox, list, empty }

//chips
enum ThemeChips {
  primary,
  aispoints,
  aisentertainment,
  aisstore,
  aisprivileges
}

enum StyleChips { selected, unselected }

enum StateChips { enabled, disabled }

enum SizeChips { small, large }

enum ThemeInformativeChip {
  //General Chips
  primary,
  aispoints,
  aisentertainment,
  aisstore,
  aisprivileges,
  platinum,
  gold,
  emerald,
  customer,
  other,
  serenade,
  skeletonchip,
}

enum StyleInformativeChip { defaulted, elevated }

enum SizeInformativeChip { small, large }

enum TextFieldStatus {
  nothing,
  warning,
}

enum TypeDatePicker { singleDate, dateRange, dateTime }

enum StatusDatePicker { enabled, disabled }

enum SwithchIcon { primary, secondary }

enum TypeAlert { other, success, warning, error }

// informative
enum TypeInformative {
  defaultbutton,
  showlogo,
  paymenthighlight,
  alert,
  iconbutton,
  carouselcard
}

enum TypeRightLayout {
  button,
  chip,
  iconButton,
}
// header nav

enum ChmHeaderNavSize {
  large,
  small,
}

enum ChmAccountSelectorType { radio, checkbox }

//ChmFloatingAcctionButton
enum PinputValidateMode { disabled, onSubmit }

enum ThemeFloatingActionButton { neutral, primary }

enum StyleFloatingActionButton { filled, elevated }

enum StateFloatingActionButton { enabled, disabled }

enum SizeFloatingActionButton { small, large }

enum ChmStepTrackingType {
  stateOff,
  congest,
  weak,
  fair,
  good,
  excellence,
  disabled
}

enum ChmStepContentListType { active, disabled }

enum TypeAccordion { general, stateInternet }

enum ChmCardCreditCardType { active, disabled }

enum ChmListVariant6IconSize { sm, xs }

enum ChmListVariant6IconType { avatar, icon }

enum ChmListVariant6ButtonType { iconButton, checkbox, radio, icon }

enum BottomSheetScreenType { fullPage, halfPage, wrapContent, dynamic }

enum ChmRatingType { ratingInformative, ratingDescriptionValue, ratingOnly }

enum ChmAttentionCardContent {
  content1,
  content2,
  content3,
  content4,
  content5,
  announcement,
  image_only
}

enum ChmTimerType { large, small, other }

enum ChmSwitchWithTextType { primary, secondary }

enum TypeChooseTimePicker { pastToNow, nowToFuture, all }

enum TypeChooseDatePicker { pastToNow, nowToFuture, all }

//icon playback button
enum TypeIconPlaybackButton { play, stop }

enum StateIconPlaybackButton { enabled, disabled }

enum ChmBottomSheetRatingsType { ratings, radio, inputField }

enum ChmScreenStateType { empty, notFound, success, freeTemplate, error }

enum TypeChmCardPrivilege { favourite, vertical, horizontal }

enum ChmOTPScreenState { defaulted, success, error, checking }

enum ChmCardCampaignType { sub_highlight, content, content_with_badge }

enum ChmCardCouponType {
  active,
  warning,
  disabled,
  collected,
  unavailable,
  readyToUsed,
  used,
}

enum ChmCardJustforyouType { showPrice, showChip }

enum ChmModalAdType { portrait, square }

enum ChmHeaderWebViewLayout {
  defaultState,
  smallState,
  memberChipState,
}

enum ChmCardFeedContentType { large, medium, small }

enum ChmScanPageContentAlertType { urlLink, plainText }

// Global
enum ChmTypeImage{ avatar, icon }

// Button Tier
enum ChmTier{aisCustomer, gold,emerald,platinum,aisFibre,point,aisSerenade}



