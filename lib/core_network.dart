import 'package:poc_package/poc_package.dart';

class CoreNetwork{
  CoreNetworkWeb core = CoreNetworkWeb();
  void web () {
  core.init();
  print("LOG HUFFU");
  } 
  void sendCommand () {
    print("Send Command:");
    core.sendCommand('once',"command");
  } 
}