import 'package:flutter/material.dart';
import 'package:zanira/style/color.dart';

final ButtonStyle lightButton = ElevatedButton.styleFrom(
  minimumSize: const Size(210, 30),
  backgroundColor: lightbackground,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
);

final ButtonStyle lightButton_small = ElevatedButton.styleFrom(
  minimumSize: const Size(110, 30),
  backgroundColor: lightbackground,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
);

final ButtonStyle darkButton = ElevatedButton.styleFrom(
  minimumSize: const Size(235, 35),
  backgroundColor: darkbackground,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
);

final ButtonStyle darkButton_home = ElevatedButton.styleFrom(
  minimumSize: const Size(325, 45),
  backgroundColor: darkbackground,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  ),
);

final ButtonStyle addButton = ElevatedButton.styleFrom(
  minimumSize: const Size(55, 55),
  backgroundColor: headtable,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
  ),
);
