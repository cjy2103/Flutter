
import 'package:url_launcher/url_launcher.dart';

class Util {
  Future <void> launchYouTubeChannel(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      // Handle the case where the URL can't be launched
      print('Could not launch YouTube channel URL');
    }
  }
}