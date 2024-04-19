import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static const textStyle25 = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    color: Colors.white,
    letterSpacing: 1.2,
  );
  static const textStyle14 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black);

  static const textStyle16 = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );
}

const TextStyle textStyle = TextStyle();
