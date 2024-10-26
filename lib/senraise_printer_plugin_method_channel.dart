import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'senraise_printer_plugin_platform_interface.dart';

/// An implementation of [SenraisePrinterPluginPlatform] that uses method channels.
class MethodChannelSenraisePrinterPlugin extends SenraisePrinterPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('senraise_printer_plugin');

  @override
  Future<String?> getServiceVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getServiceVersion');
    return version;
  }

  @override
  Future<Void?> printEpson(Uint8List bytes) async {
    await methodChannel.invokeMethod<String>('printEpson', {"data": bytes});
  }

  @override
  Future<Void?> printText(String text) async {
    await methodChannel.invokeMethod<String>('printText', {"text": text});
  }

  @override
  Future<Void?> printPicture(Uint8List pic) async {
    await methodChannel.invokeMethod<String>('printPicture', {"picture": pic});
  }

  @override
  Future<Void?> printBarCode(
      String data, int symbology, int height, int width) async {
    await methodChannel.invokeMethod<String>('printPic', {
      "data": data,
      "symbology": symbology,
      "height": height,
      "width": width
    });
  }

  @override
  Future<Void?> printQRCode(String data, int modulesize, int errorlevel) async {
    await methodChannel.invokeMethod<String>('printQRCode',
        {"data": data, "modulesize": modulesize, "errorlevel": errorlevel});
  }

  @override
  Future<Void?> setAlignment(int alignment) async {
    await methodChannel
        .invokeMethod<String>('setAlignment', {"alignment": alignment});
  }

  @override
  Future<Void?> setTextSize(Float textSize) async {
    await methodChannel
        .invokeMethod<String>('setTextSize', {"textSize": textSize});
  }

  @override
  Future<Void?> nextLine(int line) async {
    await methodChannel.invokeMethod<String>('nextLine', {"line": line});
  }

  @override
  Future<Void?> setTextBold(Bool bold) async {
    await methodChannel.invokeMethod<String>('setTextBold', {"bold": bold});
  }

  @override
  Future<Void?> setDark(int value) async {
    await methodChannel.invokeMethod<String>('setDark', {"value": value});
  }

  @override
  Future<Void?> setLineHeight(Float lineHeight) async {
    await methodChannel
        .invokeMethod<String>('setLineHeight', {"lineHeight": lineHeight});
  }

  @override
  Future<Void?> setTextDoubleWidth(Bool enable) async {
    await methodChannel
        .invokeMethod<String>('setTextDoubleWidth', {"enable": enable});
  }

  @override
  Future<Void?> setTextDoubleHeight(Bool enable) async {
    await methodChannel
        .invokeMethod<String>('setTextDoubleHeight', {"enable": enable});
  }

  @override
  Future<Void?> setCode(String code) async {
    await methodChannel.invokeMethod<String>('setCode', {"code": code});
  }
}
