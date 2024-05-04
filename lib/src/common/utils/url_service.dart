import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class UrlService {
  static Future<bool> openWebsite(String urlString) async {
    final Uri? url = Uri.tryParse(urlString.trimLeft());

    try {
      if (await canLaunchUrl(url!)) {
        return launchUrl(url);
      } else {
        throw Exception('Could not launch $url');
      }
    } on Exception catch (ex, stack) {
      log('Error opening url', error: ex, stackTrace: stack, time: DateTime.now());
      return false;
    }
  }
}
