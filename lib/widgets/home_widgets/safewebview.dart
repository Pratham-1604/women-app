import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SafeWebView extends StatefulWidget {
  final String? url;
  SafeWebView({this.url});

  @override
  _SafeWebViewState createState() => _SafeWebViewState();
}

class _SafeWebViewState extends State<SafeWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController();
    // Ensure this is done after initialization
    if (widget.url != null) {
      _controller.loadRequest(Uri.parse(widget.url!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebViewWidget(controller: _controller),
    );
  }
}
