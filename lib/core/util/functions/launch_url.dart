import 'package:url_launcher/url_launcher.dart';

import 'custom_snake_bar.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      customSnakeBar(context, text:  'can\'t launch this $url');
    }
  }
}

