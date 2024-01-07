import 'dart:io';
import 'package:pylons_sdk/src/pylons_wallet.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:uni_links_platform_interface/uni_links_platform_interface.dart'
  
Future<SDKIPCResponse<Cookbook>> getCookbook(String id) {
    return Future<SDKIPCResponse<Cookbook>>.sync(() async {
      final response = await _dispatch(
        Strings.GET_COOKBOOK,
        jsonEncode({Strings.COOKBOOK_ID: id}),
        requestResponse: true,
      );
      if (response is SDKIPCResponse<Cookbook>) {
        return response;
      }
      throw Exception('Response malformed');
    });
  }

  Future<SDKIPCResponse<Profile>> getProfile() async {
    return Future.sync(() async {
      final response = await _dispatch(Strings.GET_PROFILE, '', requestResponse: true);

      if (response is SDKIPCResponse<Profile>) {
        return response;
      }
      throw Exception('Response malformed');
    });
  }
