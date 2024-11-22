// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    String? title,
    String? image,
    double? price,
  })  : _title = title,
        _image = image,
        _price = price;

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "Price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        title: data['Title'] as String?,
        image: data['image'] as String?,
        price: castToType<double>(data['Price']),
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Title': _title,
        'image': _image,
        'Price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Title': serializeParam(
          _title,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'Price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        title: deserializeParam(
          data['Title'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['Price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        title == other.title &&
        image == other.image &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([title, image, price]);
}

ProductStruct createProductStruct({
  String? title,
  String? image,
  double? price,
}) =>
    ProductStruct(
      title: title,
      image: image,
      price: price,
    );
