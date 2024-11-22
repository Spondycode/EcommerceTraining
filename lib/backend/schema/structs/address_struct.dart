// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends BaseStruct {
  AddressStruct({
    String? postalAddress,
    String? phone,
    AddressTypes? type,
    LatLng? geolocate,
    String? image,
    bool? isSelected,
  })  : _postalAddress = postalAddress,
        _phone = phone,
        _type = type,
        _geolocate = geolocate,
        _image = image,
        _isSelected = isSelected;

  // "postal_address" field.
  String? _postalAddress;
  String get postalAddress => _postalAddress ?? '';
  set postalAddress(String? val) => _postalAddress = val;

  bool hasPostalAddress() => _postalAddress != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  set phone(String? val) => _phone = val;

  bool hasPhone() => _phone != null;

  // "Type" field.
  AddressTypes? _type;
  AddressTypes get type => _type ?? AddressTypes.others;
  set type(AddressTypes? val) => _type = val;

  bool hasType() => _type != null;

  // "geolocate" field.
  LatLng? _geolocate;
  LatLng? get geolocate => _geolocate;
  set geolocate(LatLng? val) => _geolocate = val;

  bool hasGeolocate() => _geolocate != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "isSelected" field.
  bool? _isSelected;
  bool get isSelected => _isSelected ?? false;
  set isSelected(bool? val) => _isSelected = val;

  bool hasIsSelected() => _isSelected != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        postalAddress: data['postal_address'] as String?,
        phone: data['phone'] as String?,
        type: deserializeEnum<AddressTypes>(data['Type']),
        geolocate: data['geolocate'] as LatLng?,
        image: data['image'] as String?,
        isSelected: data['isSelected'] as bool?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'postal_address': _postalAddress,
        'phone': _phone,
        'Type': _type?.serialize(),
        'geolocate': _geolocate,
        'image': _image,
        'isSelected': _isSelected,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'postal_address': serializeParam(
          _postalAddress,
          ParamType.String,
        ),
        'phone': serializeParam(
          _phone,
          ParamType.String,
        ),
        'Type': serializeParam(
          _type,
          ParamType.Enum,
        ),
        'geolocate': serializeParam(
          _geolocate,
          ParamType.LatLng,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'isSelected': serializeParam(
          _isSelected,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        postalAddress: deserializeParam(
          data['postal_address'],
          ParamType.String,
          false,
        ),
        phone: deserializeParam(
          data['phone'],
          ParamType.String,
          false,
        ),
        type: deserializeParam<AddressTypes>(
          data['Type'],
          ParamType.Enum,
          false,
        ),
        geolocate: deserializeParam(
          data['geolocate'],
          ParamType.LatLng,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        isSelected: deserializeParam(
          data['isSelected'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        postalAddress == other.postalAddress &&
        phone == other.phone &&
        type == other.type &&
        geolocate == other.geolocate &&
        image == other.image &&
        isSelected == other.isSelected;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([postalAddress, phone, type, geolocate, image, isSelected]);
}

AddressStruct createAddressStruct({
  String? postalAddress,
  String? phone,
  AddressTypes? type,
  LatLng? geolocate,
  String? image,
  bool? isSelected,
}) =>
    AddressStruct(
      postalAddress: postalAddress,
      phone: phone,
      type: type,
      geolocate: geolocate,
      image: image,
      isSelected: isSelected,
    );
