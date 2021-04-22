import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebShow extends StatefulWidget {
  @override
  _WebShowState createState() => _WebShowState();
}

class _WebShowState extends State<WebShow> {

hexColor(String colorCode) {
    String colornew = '0xff' + colorCode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  Widget setAppBar() {
    return new AppBar(
      backgroundColor: Color(hexColor('#7bcc70')),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Regenerationbiology',
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: setAppBar(),
      body: WebView(
        initialUrl: "https://www.regenerationbiology.com/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
