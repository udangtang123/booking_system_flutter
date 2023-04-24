import 'package:booking_system_flutter/model/package_data_model.dart';
import 'package:booking_system_flutter/model/service_detail_response.dart';
import 'package:booking_system_flutter/model/slot_data.dart';
import 'package:booking_system_flutter/utils/constant.dart';
//import 'package:nb_utils/nb_utils.dart';
import 'package:booking_system_flutter/plugin/nb_utils/nb_utils.dart';


class ServiceData {
  int? id;
  int? categoryId;
  int? providerId;
  int? cityId;
  int? status;
  int? isFeatured;
  int? bookingAddressId;
  num? price;
  num? discount;
  num? totalReview;
  num? totalRating;
  num? isFavourite;
  num? isSlot;
  num? serviceId;
  num? userId;
  num? totalAmount;
  num? discountPrice;
  num? taxAmount;
  num? couponDiscountAmount;
  num? qty;
  String? duration;
  String? description;
  String? providerName;
  String? categoryName;
  String? subCategoryName;
  String? providerImage;
  String? name;
  String? type;
  String? createdAt;
  String? customerName;
  String? bookingDate;
  String? bookingDay;
  String? bookingSlot;
  String? dateTimeVal;
  String? bookingDescription;
  String? couponCode;
  String? address;
  CouponData? appliedCouponData;
  List<String>? attachments;
  List<String>? serviceAttachments;
  List<ServiceAddressMapping>? serviceAddressMapping;
  List<SlotData>? bookingSlots;
  List<BookingPackage>? servicePackage;
  //Local
  bool get isSlotAvailable => isSlot.validate() == 1;

  bool get isHourlyService => type.validate() == SERVICE_TYPE_HOURLY;

  bool get isFixedService => type.validate() == SERVICE_TYPE_FIXED;

  bool get isFreeService => price.validate() == 0;

  ServiceData({
    this.attachments,
    this.bookingDate,
    this.bookingSlot,
    this.categoryId,
    this.categoryName,
    this.cityId,
    this.description,
    this.bookingDay,
    this.discount,
    this.duration,
    this.isSlot,
    this.id,
    this.bookingSlots,
    this.isFeatured,
    this.name,
    this.price,
    this.providerId,
    this.providerName,
    this.status,
    this.totalRating,
    this.totalReview,
    this.providerImage,
    this.type,
    this.isFavourite,
    this.serviceAddressMapping,
    this.subCategoryName,
    this.createdAt,
    this.customerName,
    this.serviceAttachments,
    this.serviceId,
    this.userId,
    this.totalAmount,
    this.discountPrice,
    this.taxAmount,
    this.dateTimeVal,
    this.couponCode,
    this.qty,
    this.bookingAddressId,
    this.couponDiscountAmount,
    this.servicePackage,
  });

  factory ServiceData.fromJson(Map<String, dynamic> json) {
    return ServiceData(
      id: json['id'] == null ? 0 : json['id'],
      name: json['name'] == null ? "" : json['name'].toString(),
      categoryId: json['category_id'] == null ? 0 : int.parse(json['category_id'].toString()),
      providerId: json['provider_id'] == null ? 0 : int.parse(json['provider_id'].toString()),
      price: json['price'] == null ? 0 : num.parse(json['price'].toString()),
      type: json['type'] == null ? "" : json['type'].toString(),
      bookingDate: json['booking_date'] == null ? "" : json['booking_date'].toString(),
      bookingSlot: json['booking_slot'] == null ? "" : json['booking_slot'].toString(),
      bookingDay: json['booking_day'] == null ? "" : json['booking_day'].toString(),
      isSlot: json['is_slot'] == null ? 0 : num.parse(json['is_slot'].toString()),
      subCategoryName: json['subcategory_name'] == null ? "" : json['subcategory_name'].toString(),
      discount: json['discount'] == null ? 0 : num.parse(json['discount'].toString()),
      duration: json['duration'] == null ? "" : json['duration'].toString(),
      status: json['status'],
      description: json['description'] == null ? "" : json['description'].toString(),
      isFeatured: json['is_featured'],
      providerName: json['provider_name'] == null ? "" : json['provider_name'].toString(),
      categoryName: json['category_name'] == null ? "" : json['category_name'].toString(),
      attachments: json['attchments'] != null ? new List<String>.from(json['attchments']) : null,
      totalReview: json['total_review'],
      totalRating: json['total_rating'],
      isFavourite: json['is_favourite'],
      cityId: json['city_id'],
      providerImage: json['provider_image'] == null ? "" : json['provider_image'].toString(),
      serviceAddressMapping: json['service_address_mapping'] != null ? (json['service_address_mapping'] as List).map((i) => ServiceAddressMapping.fromJson(i)).toList() : null,
      bookingSlots: json['slots'] != null ? (json['slots'] as List).map((i) => SlotData.fromJson(i)).toList() : null,
      createdAt: json['created_at'] == null ? "" : json['created_at'].toString(),
      customerName: json['customer_name'] == null ? "" : json['customer_name'].toString(),
      serviceAttachments: json['service_attchments'] != null ? new List<String>.from(json['service_attchments']) : null,
      serviceId: json['service_id'],
      userId: json['user_id'],
      servicePackage: json['servicePackage'] != null ? (json['servicePackage'] as List).map((i) => BookingPackage.fromJson(i)).toList() : null,

    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['category_name'] = this.categoryName;
    data['city_id'] = this.cityId;
    data['description'] = this.description;
    data['discount'] = this.discount;
    data['booking_date'] = this.bookingDate;
    data['booking_slot'] = this.bookingSlot;
    data['booking_day'] = this.bookingDay;
    data['slots'] = this.bookingSlots;
    data['duration'] = this.duration;
    data['id'] = this.id;
    data['is_featured'] = this.isFeatured;
    data['name'] = this.name;
    data['price'] = this.price;
    data['is_slot'] = this.isSlot;
    // data['price_format'] = this.priceFormat;
    data['provider_id'] = this.providerId;
    data['provider_name'] = this.providerName;
    data['status'] = this.status;
    data['total_rating'] = this.totalRating;
    data['total_review'] = this.totalReview;
    data['provider_image'] = this.providerImage;
    data['subcategory_name'] = this.subCategoryName;
    data['created_at'] = this.createdAt;
    data['customer_name'] = this.customerName;
    data['service_id'] = this.serviceId;
    data['user_id'] = this.userId;
    data['type'] = this.type;
    if (this.serviceAttachments != null) {
      data['service_attchments'] = this.serviceAttachments;
    }
    if (this.attachments != null) {
      data['attchments'] = this.attachments;
    }
    data['is_favourite'] = this.isFavourite;
    if (this.serviceAddressMapping != null) {
      data['service_address_mapping'] = this.serviceAddressMapping!.map((v) => v.toJson()).toList();
    }

    if (this.servicePackage != null) {
      data['servicePackage'] = this.servicePackage!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ServiceAddressMapping {
  int? id;
  int? serviceId;
  int? providerAddressId;
  String? createdAt;
  String? updatedAt;
  ProviderAddressMapping? providerAddressMapping;

  ServiceAddressMapping({this.id, this.serviceId, this.providerAddressId, this.createdAt, this.updatedAt, this.providerAddressMapping});

  ServiceAddressMapping.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    serviceId = json['service_id'];
    providerAddressId = json['provider_address_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    providerAddressMapping = json['provider_address_mapping'] != null ? new ProviderAddressMapping.fromJson(json['provider_address_mapping']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['service_id'] = this.serviceId;
    data['provider_address_id'] = this.providerAddressId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.providerAddressMapping != null) {
      data['provider_address_mapping'] = this.providerAddressMapping!.toJson();
    }
    return data;
  }
}

class ProviderAddressMapping {
  int? id;
  int? providerId;
  String? address;
  String? latitude;
  String? longitude;
  var status;
  String? createdAt;
  String? updatedAt;

  ProviderAddressMapping({this.id, this.providerId, this.address, this.latitude, this.longitude, this.status, this.createdAt, this.updatedAt});

  ProviderAddressMapping.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    providerId = json['provider_id'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['provider_id'] = this.providerId;
    data['address'] = this.address;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
