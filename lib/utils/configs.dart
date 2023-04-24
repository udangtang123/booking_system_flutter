import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

const APP_NAME = 'Handyman Service';
const APP_NAME_TAG_LINE = 'On-Demand Home Services App';
const DEFAULT_LANGUAGE = 'en';

const DOMAIN_URL = 'https://itapp.site';
const BASE_URL = '$DOMAIN_URL/api/';

// You can change this to your provider package name
const PROVIDER_PACKAGE_NAME = 'com.iqonic.provider';
const IOS_LINK_FOR_PARTNER = "https://apps.apple.com/in/app/handyman-provider-app/id1596025324";
const IOS_LINK_FOR_USER = 'https://apps.apple.com/us/app/handyman-service-user/id1591427211';

var defaultPrimaryColor = Color(0xFF5F60B9);
const DASHBOARD_AUTO_SLIDER_SECOND = 5;

const ONESIGNAL_APP_ID = '';
const ONESIGNAL_REST_KEY = "";
const ONESIGNAL_CHANNEL_ID = "";

const TERMS_CONDITION_URL = 'https://iqonic.design/terms-of-use/';
const PRIVACY_POLICY_URL = 'https://iqonic.design/privacy-policy/';
const HELP_SUPPORT_URL = 'https://iqonic.desky.support/';
const PURCHASE_URL = 'https://codecanyon.net/item/handyman-service-flutter-ondemand-home-services-app-with-complete-solution/33776097?s_rank=16';

const STRIPE_MERCHANT_COUNTRY_CODE = 'IN';
const STRIPE_CURRENCY_CODE = 'INR';
DateTime todayDate = DateTime(2022, 8, 24);

/// SADAD PAYMENT DETAIL
const SADAD_API_URL = 'https://api-s.sadad.qa';
const SADAD_PAY_URL = "https://d.sadad.qa";

Country defaultCountry() {
  return Country(
    phoneCode: '91',
    countryCode: 'IN',
    e164Sc: 91,
    geographic: true,
    level: 1,
    name: 'India',
    example: '9123456789',
    displayName: 'India (IN) [+91]',
    displayNameNoCountryCode: 'India (IN)',
    e164Key: '91-IN-0',
    fullExampleWithPlusSign: '+919123456789',
  );
}
