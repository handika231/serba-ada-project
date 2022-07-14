// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Supplier _$SupplierFromJson(Map<String, dynamic> json) => Supplier(
      locationName: json['location_name'] as String?,
      name: json['name'] as String?,
      supplierId: json['supplier_id'] as int?,
      locationId: json['location_id'] as int?,
    );

Map<String, dynamic> _$SupplierToJson(Supplier instance) => <String, dynamic>{
      'location_name': instance.locationName,
      'name': instance.name,
      'supplier_id': instance.supplierId,
      'location_id': instance.locationId,
    };
