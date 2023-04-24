import 'package:booking_system_flutter/component/price_widget.dart';
import 'package:booking_system_flutter/main.dart';
import 'package:flutter/material.dart';
//import 'package:nb_utils/nb_utils.dart';
import 'package:booking_system_flutter/plugin/nb_utils/nb_utils.dart';


class PackageItemComponent extends StatefulWidget {
  final bool hasAdded;

  PackageItemComponent({this.hasAdded = false});

  @override
  _PackageItemComponentState createState() => _PackageItemComponentState();
}

class _PackageItemComponentState extends State<PackageItemComponent> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width(),
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(8),
      decoration: boxDecorationWithRoundedCorners(
        borderRadius: radius(),
        backgroundColor: context.cardColor,
        border: appStore.isDarkMode ? Border.all(color: context.dividerColor) : null,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hair Cutting Cleaning Saving', style: boldTextStyle()),
              8.height,
              PriceWidget(
                price: 150,
                hourlyTextColor: Colors.white,
                size: 14,
              ),
            ],
          ).expand(),
          AppButton(
            child: Text(widget.hasAdded ? 'Remove' : 'Choose', style: boldTextStyle(color: white)),
            color: context.primaryColor,
            onTap: () {
              //
            },
          )
        ],
      ),
    );
  }
}
