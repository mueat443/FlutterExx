import 'package:js/js.dart';

@JS('sendLanguageToFlutter')
external void sendLanguageToFlutter(String language);

@JS('receiveLanguageFromReact')
external set receiveLanguageFromReact(Function(String) callback);