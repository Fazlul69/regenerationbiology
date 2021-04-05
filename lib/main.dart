import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Regenerationbiology',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Regenerationbiology'),
        ),
        body: WebView(
          initialUrl: "https://www.regenerationbiology.com/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}