import 'dart:ffi';
import 'dart:typed_data';

import 'senraise_printer_plugin_platform_interface.dart';

class SenraisePrinterPlugin {
  Future<String?> getServiceVersion() {
    return SenraisePrinterPluginPlatform.instance.getServiceVersion();
  }

  Future<Void?> printEpson(Uint8List bytes) {
    return SenraisePrinterPluginPlatform.instance.printEpson(bytes);
  }

  Future<Void?> printText(String text) {
    return SenraisePrinterPluginPlatform.instance.printText(text);
  }

  Future<Void?> printPicture(Uint8List picture) {
    return SenraisePrinterPluginPlatform.instance.printPicture(picture);
  }

  Future<Void?> printBarCode(
      String data, int symbology, int height, int width) {
    return SenraisePrinterPluginPlatform.instance
        .printBarCode(data, symbology, height, width);
  }

  Future<Void?> printQRCode(String data, int modulesize, int errorlevel) {
    return SenraisePrinterPluginPlatform.instance
        .printQRCode(data, modulesize, errorlevel);
  }

  Future<Void?> setAlignment(int alignment) {
    return SenraisePrinterPluginPlatform.instance.setAlignment(alignment);
  }

  Future<Void?> setTextSize(Float textSize) {
    return SenraisePrinterPluginPlatform.instance.setTextSize(textSize);
  }

  Future<Void?> nextLine(int line) {
    return SenraisePrinterPluginPlatform.instance.nextLine(line);
  }

  Future<Void?> setTextBold(Bool bold) {
    return SenraisePrinterPluginPlatform.instance.setTextBold(bold);
  }

  Future<Void?> setDark(int value) {
    return SenraisePrinterPluginPlatform.instance.setDark(value);
  }

  Future<Void?> setLineHeight(Float lineHeight) {
    return SenraisePrinterPluginPlatform.instance.setLineHeight(lineHeight);
  }

  Future<Void?> setTextDoubleWidth(Bool enable) {
    return SenraisePrinterPluginPlatform.instance.setTextDoubleWidth(enable);
  }

  Future<Void?> setTextDoubleHeight(Bool enable) {
    return SenraisePrinterPluginPlatform.instance.setTextDoubleHeight(enable);
  }

  Future<Void?> setCode(String code) {
    return SenraisePrinterPluginPlatform.instance.setCode(code);
  }
}
