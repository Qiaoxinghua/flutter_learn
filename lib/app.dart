import 'package:flutter/material.dart';
import 'basewidget.dart';
import 'learn_textfield.dart';
import 'learn_row.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      //application名字
      title: "FlutterApplication",
      //页面
      home: new FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  FirstPage();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Flutter学习"),
        ),
        body: new Column(
          children: <Widget>[
            new RaisedButton(
                child: new Text("基础控件用法"),
                onPressed: () {
                  //跳转到新的 页面我们需要调用 navigator.push方法 这个和eactNative的方式相同
                  _start(context, new BaseWidget());
                }),
            new RaisedButton(
                child: new Text("输入框和表单"),
                onPressed: () {
                  _start(context, new LearnTextField());
                }),
            new RaisedButton(
                child: new Text("线形布局Row和Column"),
                onPressed: () {
                  //跳转到新的 页面我们需要调用 navigator.push方法 这个和eactNative的方式相同
                  _start(context, new LearnRow());
                }),
          ],
        ));
  }

  void _start(BuildContext context, Widget w) {
    Navigator.push(context, new MaterialPageRoute(builder: (context) => w));
  }
}
