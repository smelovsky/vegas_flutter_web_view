import 'package:flutter/material.dart';
import 'package:vegas_flutter_web_view/web_page.dart';

class HomePage extends StatefulWidget {

  const HomePage({ Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  String _url = 'https://www.google.com';

  _changeUrl(String text){
    setState(() {_url = text; });
  }

  String _gerUrl() {
    return _url;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text("Webview dem app"),
        ),


        body: Center(child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: double.infinity, height: 300),
            child: Center(child:

            Column(
              children: <Widget>[

                TextFormField(initialValue: _url,
                    style: TextStyle(fontSize: 22),
                    onChanged: _changeUrl),
                TextButton(
                  child: Text("Open Web page"),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => WebViewApp(url: _gerUrl())
                    ));
                  },
                ),

              ],
            ),

            )
        )
        )


    );


  }
}
