import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('基本的控件用法'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              new IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () => {},
              ),
              new OutlineButton(
                  //onPressed: null,不响应点击事件
                  onPressed: () => {},
                  child: Text('OutlineButton')),
              new FlatButton(
                  color: Colors.blue,
                  highlightColor: Colors.blue[700],
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  onPressed: () => {},
                  child: Text('FlatButton')),
              new RaisedButton(
                  onPressed: () => {}, child: Text('RaisedButton')),
              new Text(
                '这是一个flutter demo的展示',
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 40.0,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.red,
                    decorationStyle: TextDecorationStyle.dashed),
              ),
              new Image.asset(
                'images/avatar.png',
                width: 100.0,
              ),
              new Image.network(
                "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
                width: 200.0,
                fit: BoxFit.fill,
                color: Colors.blue,
                colorBlendMode: BlendMode.color,
              ),
              new Switch(value: true, onChanged: null),
            ],
          ),
          alignment: Alignment.bottomCenter,
          color: Colors.green,
        ),
      ),
    );
  }
}
