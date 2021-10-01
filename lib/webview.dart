part of zitopay;

//create webveiw container
class WebViewContainer extends StatefulWidget {
  final url;
  WebViewContainer(this.url);
  @override
  createState() => _WebViewContainerState(this.url);
}

//set the inner state configurations
class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();
  _WebViewContainerState(this._url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(), //comment out this line to remove the app bar
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: _url))
          ],
        ));
  }
}
