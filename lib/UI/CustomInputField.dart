import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final Icon fieldIcon;
  final String hintText;

  CustomInputField(this.fieldIcon, this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Material(
        elevation: 5.0,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.deepOrange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: fieldIcon,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
              ),
              width: 250,
              height: 60,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      fillColor: Colors.white,
                      filled: true),
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
