import 'package:flutter/material.dart';

class RoundedButton {
  static RoundButton(text, buton) {
    return ElevatedButton(onPressed: buton, child: text);
  }
}
