// import 'dart:convert';
// import 'dart:io';
// import 'dart:js' as js;
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:js/js.dart';
// import 'package:lottie/lottie.dart';
// import './indicator_page.dart';
// import 'base_color.dart';
// import 'base_text_style.dart';
// import 'chm_button.dart';
// import 'chm_flag.dart';
// import 'chm_radio_button.dart';
// import 'custom_radio.dart';
// import 'enum.dart';
// import 'dart:html' as html;
// import 'interop.dart';

// @JS('window')
// external dynamic get window;

// class OnBoardingSelectLanguageScreen extends StatefulWidget {
//   const OnBoardingSelectLanguageScreen({Key? key}) : super(key: key);

//   @override
//   State<OnBoardingSelectLanguageScreen> createState() =>
//       _OnBoardingSelectLanguageScreenState();
// }

// class _OnBoardingSelectLanguageScreenState
//     extends State<OnBoardingSelectLanguageScreen> {
//   String languageCode = "en";
//   List<ChmRadioButtonModel> languageList = [];
//   List<String> languageCheck = ["th", "en", "my", "km"];
//   String trackLang = "";
//   String getLocaleName = "en";
//   String nameKey = "TH";
//   String groupValue = "";
//   double scale = 1;
//   void _updateSharedState(String newLanguage) {
//     updateSharedState('language', newLanguage);
//   }

//   void _initializeStateFromSharedState() {
//     final sharedLanguage = getSharedState('language');
//     print('Shared state language: $sharedLanguage');
//     setState(() {
//       languageCode = sharedLanguage.isNotEmpty ? sharedLanguage : 'en';
//     });
//   }

//   void _handleLanguageChange(String newLanguage) {
//     setState(() {
//       languageCode = newLanguage;
//       _updateSharedState(newLanguage);
//     });
//   }

//   @override
//   void initState() {
//     // _setupJsInterop();
//     _initializeStateFromSharedState();
//     setState(() {
//       switch (languageCode) {
//         case "th":
//           trackLang = "Th";
//           scale = 1;
//           break;
//         case "en":
//           trackLang = "En";
//           scale = 1;
//           break;
//         case "my":
//           trackLang = "My";
//           scale = 0.7;
//           break;
//         case "km":
//           trackLang = "Km";
//           scale = 0.7;
//           break;
//         default:
//       }
//       languageList = [
//         ChmRadioButtonModel(
//           value: "th",
//           isChecked: getLocaleName == "th" ? true : false,
//           isDisable: false,
//           title: "ภาษาไทย",
//           imageWidget: const Padding(
//             padding: EdgeInsets.only(right: 18.0),
//             child: ChmFlag(
//               flags: "th",
//               circleShape: true,
//             ),
//           ),
//         ),
//         ChmRadioButtonModel(
//           value: "en",
//           isChecked: getLocaleName == "en" ? true : false,
//           isDisable: false,
//           title: "English",
//           imageWidget: const Padding(
//             padding: EdgeInsets.only(right: 18.0),
//             child: ChmFlag(
//               flags: "gb",
//               circleShape: true,
//             ),
//           ),
//         ),
//         ChmRadioButtonModel(
//           value: "my",
//           isChecked: getLocaleName == "my" ? true : false,
//           isDisable: false,
//           title: "မြန်မာစာ",
//           imageWidget: const Padding(
//             padding: EdgeInsets.only(right: 18.0),
//             child: ChmFlag(
//               flags: "mmr",
//               circleShape: true,
//             ),
//           ),
//         ),
//         ChmRadioButtonModel(
//           value: "km",
//           isChecked: getLocaleName == "km" ? true : false,
//           isDisable: false,
//           title: "ខ្មែរ",
//           imageWidget: const Padding(
//             padding: EdgeInsets.only(right: 18.0),
//             child: ChmFlag(
//               flags: "KHM",
//               circleShape: true,
//             ),
//           ),
//         ),
//       ];
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         return true; // true ถ้าต้องการปิดหน้า (pop), false ถ้าไม่ต้องการ
//       },
//       child: Scaffold(
//         backgroundColor: BaseColors.whiteColor,
//         body: SafeArea(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Flexible(
//                   flex: 4,
//                   child: Column(
//                     children: [
//                       buildIndicatorPage(itemCount: 5, currentIndex: 1),
//                       // Lottie.network(
//                       //   'https://cdnstmfafstg.azureedge.net/contents/main_app_common/onboarding/01_Select_Language.json',
//                       //   width: MediaQuery.of(context).size.height * 0.20,
//                       //   height: MediaQuery.of(context).size.height * 0.20,
//                       // ),
//                       Lottie.asset(
//                         'lib/icons/lottie.json',
//                         width: MediaQuery.of(context).size.height * 0.20,
//                         height: MediaQuery.of(context).size.height * 0.20,
//                       ),
//                       Text(
//                         getSelectLanguage(languageCode),
//                         // CoreLanguage().getLanguageByKey("select_language"),
//                         style: BaseTextStyle.headlineSmallBold
//                             .apply(fontFamily: _getFontFamily(languageCode)),
//                         textScaleFactor: scale,
//                       ),
//                     ],
//                   ),
//                 ),
//                 buildSelectLanguage(context),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Flexible buildSelectLanguage(BuildContext context) {
//     return Flexible(
//       flex: 5,
//       child: Container(
//         width: double.maxFinite,
//         padding: EdgeInsets.only(
//             left: 24.0,
//             right: 24.0,
//             bottom: MediaQuery.of(context).size.height * 0.05,
//             top: 10),
//         decoration: const BoxDecoration(
//           color: BaseColors.allPlatinum99,
//           borderRadius: BorderRadius.vertical(
//             top: Radius.elliptical(200, 40),
//           ),
//         ),
//         child: Column(
//           key: Key("selectLanguage"),
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             Flexible(
//               flex: 5,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Flexible(
//                     flex: 1,
//                     child: Padding(
//                       padding: EdgeInsets.only(
//                           top: MediaQuery.of(context).size.height * 0.03),
//                       child: Text(
//                         getSelectLanguageLabel(languageCode),
//                         style: BaseTextStyle.bodyMedium
//                             .copyWith(fontWeight: FontWeight.w500)
//                             .apply(fontFamily: _getFontFamily(languageCode)),
//                       ),
//                     ),
//                   ),
//                   Flexible(
//                     flex: 4,
//                     child: ListView.builder(
//                       itemCount: languageList.length,
//                       itemBuilder: (context, int key) {
//                         switch (languageList[key].value) {
//                           case "th":
//                             trackLang = "Th";
//                             nameKey = "radioButton_chooseLanguage_TH";
//                             scale = 1;
//                             break;
//                           case "en":
//                             trackLang = "En";
//                             nameKey = "radioButton_chooseLanguage_Eng";
//                             scale = 1;
//                             break;
//                           case "my":
//                             trackLang = "My";
//                             nameKey = "radioButton_chooseLanguage_my";
//                             scale = 0.7;
//                             break;
//                           case "km":
//                             trackLang = "Km";
//                             nameKey = "radioButton_chooseLanguage_km";
//                             scale = 0.8;
//                             break;
//                           default:
//                         }

//                         return CustomRadio(
//                             key: Key(nameKey),
//                             value: languageList[key].value,
//                             title: languageList[key].title,
//                             groupValue: groupValue,
//                             imageWidget: languageList[key].imageWidget,
//                             radioButtonType: ChmRadioButtonType.primary,
//                             isDisable: languageList[key].isDisable,
//                             isChecked: languageList[key].isChecked,
//                             isShowRadio: true,
//                             titleTextStyle: BaseTextStyle.bodyRegular.apply(
//                                 fontFamily:
//                                     _getFontFamily(languageList[key].value),
//                                 fontSizeFactor:
//                                     _getFontScale(languageList[key].value)),
//                             onChanged: (value) async {
//                               groupValue = value;
//                               setState(() {
//                                 languageCode = value;
//                                 switch (value) {
//                                   case "th":
//                                     trackLang = "Th";
//                                     scale = 1;
//                                     break;
//                                   case "en":
//                                     trackLang = "En";
//                                     scale = 1;
//                                     break;
//                                   case "my":
//                                     trackLang = "My";
//                                     scale = 0.7;
//                                     break;
//                                   case "km":
//                                     trackLang = "Km";
//                                     scale = 0.8;
//                                     break;
//                                   default:
//                                 }
//                                 _handleLanguageChange(
//                                     languageCode); // Send updated language code to React
//                               });
//                             });
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: ChmButton(
//                 key: Key("button_continueSelectLanguage"),
//                 buttonWidth: double.maxFinite,
//                 theme: ThemeButton.primary,
//                 style: StyleButton.filled,
//                 size: SizeButton.large,
//                 state: StateButton.enabled,
//                 // title: CoreLanguage()
//                 //     .getLanguageByKey("onboarding_button_continue"),
//                 title: getButtonLanguage(languageCode),
//                 onPressed: () async {
//                   if (languageCode != null) {
//                     switch (languageCode) {
//                       case "th":
//                         trackLang = "Th";
//                         break;
//                       case "en":
//                         trackLang = "En";
//                         break;
//                       case "my":
//                         trackLang = "My";
//                         break;
//                       case "km":
//                         trackLang = "Km";
//                         break;
//                       default:
//                     }
//                   }
//                   null;
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   String _getFontFamily(String? langCode) {
//     switch (langCode) {
//       case 'my':
//         return 'Pyidaungsu';
//       case 'km':
//         return 'SukhumvitTadmai';
//       case 'th':
//       case 'en':
//       default:
//         return 'DB Heavent';
//     }
//   }

//   double _getFontScale(String? langCode) {
//     switch (langCode) {
//       case 'my':
//         return 0.7;
//       case 'km':
//         return 0.8;
//       case 'th':
//       case 'en':
//       default:
//         return 1.0;
//     }
//   }
// }

// String getButtonLanguage(String? languageKey) {
//   // print('languageKey: $languageKey');
//   if (languageKey == 'th') {
//     return 'ดำเนินการต่อ';
//   } else if (languageKey == 'en') {
//     return 'continue';
//   } else if (languageKey == 'my') {
//     return 'ဆက်သွားရန်';
//   } else if (languageKey == 'km') {
//     return 'បន្តទៅមុខ';
//   } else {
//     return 'Unknown Language'; // กรณีไม่ตรงกับเงื่อนไขด้านบน
//   }
// }

// String getSelectLanguageLabel(String? languageKey) {
//   // print('languageKey: $languageKey');
//   if (languageKey == 'th') {
//     return 'ฉันใช้ภาษา';
//   } else if (languageKey == 'en') {
//     return 'I speak';
//   } else if (languageKey == 'my') {
//     return 'အသုံးပြုစကား';
//   } else if (languageKey == 'km') {
//     return 'ខ្ញុំប្រើភាសា';
//   } else {
//     return 'Unknown Language'; // กรณีไม่ตรงกับเงื่อนไขด้านบน
//   }
// }

// String getSelectLanguage(String? languageKey) {
//   // print('languageKey: $languageKey');
//   if (languageKey == 'th') {
//     return 'เลือกภาษา';
//   } else if (languageKey == 'en') {
//     return 'Select language';
//   } else if (languageKey == 'my') {
//     return 'ဘာသာစကား';
//   } else if (languageKey == 'km') {
//     return 'ជ្រើសរើសភាសា';
//   } else {
//     return 'Unknown Language'; // กรณีไม่ตรงกับเงื่อนไขด้านบน
//   }
// }
