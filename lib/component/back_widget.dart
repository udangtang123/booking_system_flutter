import 'package:booking_system_flutter/utils/images.dart';
import 'package:booking_system_flutter/utils/string_extensions.dart';
import 'package:flutter/material.dart';
//import 'package:nb_utils/nb_utils.dart';
import 'package:booking_system_flutter/plugin/nb_utils/nb_utils.dart';


class BackWidget extends StatelessWidget {
  final Function()? onPressed;
  final Color? iconColor;

  BackWidget({this.onPressed, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed ??
          () {
            finish(context);
          },
      icon: ic_arrow_left.iconImage(color: iconColor ?? Colors.white),
    );
  }
}
