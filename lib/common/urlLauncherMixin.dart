
import 'package:url_launcher/url_launcher.dart';

mixin class  UrlLauncher{

  Future<void> launchAppStore(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch this $url');
    }
  }

}