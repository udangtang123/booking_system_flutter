//import 'package:nb_utils/nb_utils.dart';
import 'package:booking_system_flutter/plugin/nb_utils/nb_utils.dart';


// num Extensions
extension NumExt on num? {
  /// Validate given double is not null and returns given value if null.
  num validate({num value = 0}) => this ?? value;

  /// Returns price with currency
  String toCurrencyAmount() => "$defaultCurrencySymbol${this.validate()}";
}
