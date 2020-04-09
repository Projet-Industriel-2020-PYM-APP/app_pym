import 'package:url_launcher/url_launcher.dart' as url_launcher;

class UrlLauncherUtils {
  static Future<bool> launch(String url) async {
    if (await url_launcher.canLaunch(url)) {
      await url_launcher.launch(url);
      return true;
    } else {
      return false;
    }
  }
}
