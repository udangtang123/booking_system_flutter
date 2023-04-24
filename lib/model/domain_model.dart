class DomainResponse {
  String? country;
  String? link;

  DomainResponse({this.country, this.link});

  factory DomainResponse.fromJson(Map<String, dynamic> json) {
    return DomainResponse(
      country: json['country'],
      link: json['link'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['link'] = this.link;
    return data;
  }
}
