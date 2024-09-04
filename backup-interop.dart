import 'package:js/js.dart';

@JS('updateSharedState')
external void updateSharedState(String key, String value);

@JS('getSharedState')
external String getSharedState(String key);

@JS('receiveLanguageFromReact')
external void receiveLanguageFromReact(String language);