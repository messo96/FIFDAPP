import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Calendar extends StatelessWidget {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CALENDAR"),
      ),
      body: WebView(
        //   initialUrl:            "https://docs.google.com/spreadsheets/d/1tNKWtfzQUM94NSNCx-9PyN-gzfIys5ro/edit?usp=sharing&ouid=110357561664543970223&rtpof=true&sd=true",
        initialUrl: 'https://en.wikipedia.org/wiki/Kraken',
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
