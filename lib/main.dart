import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DialogPractice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DialogPractice'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('ダイアログ表示ボタン'),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) {
                return AlertDialog(
                  title: Text('ダイアログサンプル'),
                  // デフォルトで全方向にpaddingが付いているので、paddingを外す。
                  contentPadding: EdgeInsets.zero,
                  // 背景色を青色の半透明に変更。
                  backgroundColor: Colors.blue.withOpacity(0.6),
                  content: Container(
                    width: double.maxFinite,
                    // 今回は、要素が3しかない設定で余白が余っていたので、heightを指定
                    height: 200,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(Icons.map),
                          title: Text('Map'),
                          trailing: Text('>'),
                          onTap: () {
                            // タップした時の処理を記入する
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.photo_album),
                          title: Text('Album'),
                          trailing: Text('>'),
                          onTap: () {
                            // タップした時の処理を記入する
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Phone'),
                          trailing: Text('>'),
                          onTap: () {
                            // タップした時の処理を記入する
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
