library progress_dialog;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProgressDialog {

  BuildContext buildContext;
  String message = "Loading...";

  ProgressDialog(this.buildContext);

  void setMessage(String mess){
    this.message = mess;
  }

  void show() {
    _showDialog();
  }

  void hide() {
    Navigator.pop(buildContext);
  }

  Future _showDialog() {
    showDialog(
      context: buildContext,
      barrierDismissible: false,
      builder: (BuildContext context) {

        return CupertinoAlertDialog(
          content: SizedBox(
            height: 45.0,
            child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(width: 10.0),
                  CircularProgressIndicator(),
                  SizedBox(width: 20.0),
                  Text(
                    message,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
    return null;
  }
}