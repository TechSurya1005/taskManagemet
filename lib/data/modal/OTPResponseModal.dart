import 'dart:convert';

/// status : "Success"
/// Data : {"id":46,"mobile":"7879701445","cust_status":"1","Name":null,"Gender":null,"Email":null,"Address":null,"Token":null,"Profile_Pic":null}

OtpResponseModal otpResponseModalFromJson(String str) =>
    OtpResponseModal.fromJson(json.decode(str));
String otpResponseModalToJson(OtpResponseModal data) =>
    json.encode(data.toJson());

class OtpResponseModal {
  OtpResponseModal({
    String? status,
    Data? data,
  }) {
    _status = status;
    _data = data;
  }

  OtpResponseModal.fromJson(dynamic json) {
    _status = json['status'];
    _data = json['Data'] != null ? Data.fromJson(json['Data']) : null;
  }
  String? _status;
  Data? _data;
  OtpResponseModal copyWith({
    String? status,
    Data? data,
  }) =>
      OtpResponseModal(
        status: status ?? _status,
        data: data ?? _data,
      );
  String? get status => _status;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    if (_data != null) {
      map['Data'] = _data?.toJson();
    }
    return map;
  }
}

/// id : 46
/// mobile : "7879701445"
/// cust_status : "1"
/// Name : null
/// Gender : null
/// Email : null
/// Address : null
/// Token : null
/// Profile_Pic : null
/// adhar : null

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());

class Data {
  Data({
    dynamic cust_id,
    dynamic cartid,
    dynamic mobile,
    String? custStatus,
    dynamic name,
    dynamic gender,
    dynamic email,
    dynamic address,
    dynamic token,
    dynamic profilePic,
    dynamic adhar,
  }) {
    _cust_id = cust_id;
    _cartid = cartid;
    _mobile = mobile;
    _custStatus = custStatus;
    _name = name;
    _gender = gender;
    _email = email;
    _address = address;
    _token = token;
    _profilePic = profilePic;
    _adhar = adhar;
  }

  Data.fromJson(dynamic json) {
    _cust_id = json['cust_id'];
    _cartid = json['Cart_ID'];
    _mobile = json['mobile'];
    _custStatus = json['cust_status'];
    _name = json['Name'];
    _gender = json['Gender'];
    _email = json['Email'];
    _address = json['Address'];
    _token = json['Token'];
    _profilePic = json['Profile'];
    _adhar = json['Adhar_No'];
  }
  dynamic _cust_id;
  dynamic _cartid;
  String? _mobile;
  dynamic _custStatus;
  dynamic _name;
  dynamic _gender;
  dynamic _email;
  dynamic _address;
  dynamic _token;
  dynamic _profilePic;
  dynamic _adhar;
  Data copyWith({
    dynamic cust_id,
    dynamic cartid,
    String? mobile,
    dynamic custStatus,
    dynamic name,
    dynamic gender,
    dynamic email,
    dynamic address,
    dynamic token,
    dynamic profilePic,
    dynamic adhar,
  }) =>
      Data(
        cust_id: cust_id ?? _cust_id,
        cartid: cartid ?? _cartid,
        mobile: mobile ?? _mobile,
        custStatus: custStatus ?? _custStatus,
        name: name ?? _name,
        gender: gender ?? _gender,
        email: email ?? _email,
        address: address ?? _address,
        token: token ?? _token,
        profilePic: profilePic ?? _profilePic,
        adhar: adhar ?? _adhar,
      );
  dynamic get cust_id => _cust_id;
  dynamic get cartid => _cartid;
  String? get mobile => _mobile;
  dynamic get custStatus => _custStatus;
  dynamic get name => _name;
  dynamic get gender => _gender;
  dynamic get email => _email;
  dynamic get address => _address;
  dynamic get token => _token;
  dynamic get profilePic => _profilePic;
  dynamic get adhar => _adhar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['cust_id'] = _cust_id;
    map['Cart_ID'] = _cartid;
    map['mobile'] = _mobile;
    map['cust_status'] = _custStatus;
    map['Name'] = _name;
    map['Gender'] = _gender;
    map['Email'] = _email;
    map['Address'] = _address;
    map['Token'] = _token;
    map['Profile'] = _profilePic;
    map['Adhar_No'] = _adhar;
    return map;
  }
}
