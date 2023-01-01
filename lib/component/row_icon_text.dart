import 'package:flutter/material.dart';

class RowImgText {
  static ImgText(img, text) {
    return Row(
      children: [
        Image.asset(img),
        const SizedBox(
          width: 10,
        ),
        Text(text)
      ],
    );
  }
}
