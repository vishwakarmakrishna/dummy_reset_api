// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAllProduct _$GetAllProductFromJson(Map<String, dynamic> json) {
  return _GetAllProduct.fromJson(json);
}

/// @nodoc
mixin _$GetAllProduct {
  @JsonKey(name: "products")
  List<Product> get products => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "skip")
  int get skip => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAllProductCopyWith<GetAllProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAllProductCopyWith<$Res> {
  factory $GetAllProductCopyWith(
          GetAllProduct value, $Res Function(GetAllProduct) then) =
      _$GetAllProductCopyWithImpl<$Res, GetAllProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "products") List<Product> products,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "skip") int skip,
      @JsonKey(name: "limit") int limit});
}

/// @nodoc
class _$GetAllProductCopyWithImpl<$Res, $Val extends GetAllProduct>
    implements $GetAllProductCopyWith<$Res> {
  _$GetAllProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAllProductImplCopyWith<$Res>
    implements $GetAllProductCopyWith<$Res> {
  factory _$$GetAllProductImplCopyWith(
          _$GetAllProductImpl value, $Res Function(_$GetAllProductImpl) then) =
      __$$GetAllProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "products") List<Product> products,
      @JsonKey(name: "total") int total,
      @JsonKey(name: "skip") int skip,
      @JsonKey(name: "limit") int limit});
}

/// @nodoc
class __$$GetAllProductImplCopyWithImpl<$Res>
    extends _$GetAllProductCopyWithImpl<$Res, _$GetAllProductImpl>
    implements _$$GetAllProductImplCopyWith<$Res> {
  __$$GetAllProductImplCopyWithImpl(
      _$GetAllProductImpl _value, $Res Function(_$GetAllProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? total = null,
    Object? skip = null,
    Object? limit = null,
  }) {
    return _then(_$GetAllProductImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      skip: null == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAllProductImpl implements _GetAllProduct {
  const _$GetAllProductImpl(
      {@JsonKey(name: "products") required final List<Product> products,
      @JsonKey(name: "total") required this.total,
      @JsonKey(name: "skip") required this.skip,
      @JsonKey(name: "limit") required this.limit})
      : _products = products;

  factory _$GetAllProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAllProductImplFromJson(json);

  final List<Product> _products;
  @override
  @JsonKey(name: "products")
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: "total")
  final int total;
  @override
  @JsonKey(name: "skip")
  final int skip;
  @override
  @JsonKey(name: "limit")
  final int limit;

  @override
  String toString() {
    return 'GetAllProduct(products: $products, total: $total, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllProductImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), total, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllProductImplCopyWith<_$GetAllProductImpl> get copyWith =>
      __$$GetAllProductImplCopyWithImpl<_$GetAllProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAllProductImplToJson(
      this,
    );
  }
}

abstract class _GetAllProduct implements GetAllProduct {
  const factory _GetAllProduct(
      {@JsonKey(name: "products") required final List<Product> products,
      @JsonKey(name: "total") required final int total,
      @JsonKey(name: "skip") required final int skip,
      @JsonKey(name: "limit") required final int limit}) = _$GetAllProductImpl;

  factory _GetAllProduct.fromJson(Map<String, dynamic> json) =
      _$GetAllProductImpl.fromJson;

  @override
  @JsonKey(name: "products")
  List<Product> get products;
  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "skip")
  int get skip;
  @override
  @JsonKey(name: "limit")
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$GetAllProductImplCopyWith<_$GetAllProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "price")
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: "discountPercentage")
  double get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "rating")
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "stock")
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(name: "brand")
  String get brand => throw _privateConstructorUsedError;
  @JsonKey(name: "category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "thumbnail")
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "discountPercentage") double discountPercentage,
      @JsonKey(name: "rating") double rating,
      @JsonKey(name: "stock") int stock,
      @JsonKey(name: "brand") String brand,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "thumbnail") String thumbnail,
      @JsonKey(name: "images") List<String> images});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? brand = null,
    Object? category = null,
    Object? thumbnail = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "price") int price,
      @JsonKey(name: "discountPercentage") double discountPercentage,
      @JsonKey(name: "rating") double rating,
      @JsonKey(name: "stock") int stock,
      @JsonKey(name: "brand") String brand,
      @JsonKey(name: "category") String category,
      @JsonKey(name: "thumbnail") String thumbnail,
      @JsonKey(name: "images") List<String> images});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? brand = null,
    Object? category = null,
    Object? thumbnail = null,
    Object? images = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "price") required this.price,
      @JsonKey(name: "discountPercentage") required this.discountPercentage,
      @JsonKey(name: "rating") required this.rating,
      @JsonKey(name: "stock") required this.stock,
      @JsonKey(name: "brand") required this.brand,
      @JsonKey(name: "category") required this.category,
      @JsonKey(name: "thumbnail") required this.thumbnail,
      @JsonKey(name: "images") required final List<String> images})
      : _images = images;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "price")
  final int price;
  @override
  @JsonKey(name: "discountPercentage")
  final double discountPercentage;
  @override
  @JsonKey(name: "rating")
  final double rating;
  @override
  @JsonKey(name: "stock")
  final int stock;
  @override
  @JsonKey(name: "brand")
  final String brand;
  @override
  @JsonKey(name: "category")
  final String category;
  @override
  @JsonKey(name: "thumbnail")
  final String thumbnail;
  final List<String> _images;
  @override
  @JsonKey(name: "images")
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Product(id: $id, title: $title, description: $description, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, brand: $brand, category: $category, thumbnail: $thumbnail, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      price,
      discountPercentage,
      rating,
      stock,
      brand,
      category,
      thumbnail,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "description") required final String description,
          @JsonKey(name: "price") required final int price,
          @JsonKey(name: "discountPercentage")
          required final double discountPercentage,
          @JsonKey(name: "rating") required final double rating,
          @JsonKey(name: "stock") required final int stock,
          @JsonKey(name: "brand") required final String brand,
          @JsonKey(name: "category") required final String category,
          @JsonKey(name: "thumbnail") required final String thumbnail,
          @JsonKey(name: "images") required final List<String> images}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "price")
  int get price;
  @override
  @JsonKey(name: "discountPercentage")
  double get discountPercentage;
  @override
  @JsonKey(name: "rating")
  double get rating;
  @override
  @JsonKey(name: "stock")
  int get stock;
  @override
  @JsonKey(name: "brand")
  String get brand;
  @override
  @JsonKey(name: "category")
  String get category;
  @override
  @JsonKey(name: "thumbnail")
  String get thumbnail;
  @override
  @JsonKey(name: "images")
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
