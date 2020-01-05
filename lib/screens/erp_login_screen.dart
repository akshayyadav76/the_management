import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class ErpLoginScreen extends StatelessWidget {
  static const routName03='./erploginscreen';
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "http://erp.oistbpl.com/",
     appBar: AppBar(title: Text("ERP"),centerTitle: true,),

//      withZoom: true,
//      withOverviewMode: true,
//      withJavascript: true,
//      useWideViewPort: true,
//      scrollBar: true,
//      resizeToAvoidBottomInset: true,
//      enableAppScheme: true,displayZoomControls: true,supportMultipleWindows: true,



    );
  }
}
