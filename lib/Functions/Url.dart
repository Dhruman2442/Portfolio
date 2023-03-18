import 'package:url_launcher/url_launcher.dart';

launchURLBrowser() async {
  const url = 'https://github.com/Dhruman2442';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
