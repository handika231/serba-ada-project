import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'supplier.g.dart';

@JsonSerializable()
class Supplier extends Equatable {
	@JsonKey(name: 'location_name') 
	final String? locationName;
	final String? name;
	@JsonKey(name: 'supplier_id') 
	final int? supplierId;
	@JsonKey(name: 'location_id') 
	final int? locationId;

	const Supplier({
		this.locationName, 
		this.name, 
		this.supplierId, 
		this.locationId, 
	});

	factory Supplier.fromJson(Map<String, dynamic> json) {
		return _$SupplierFromJson(json);
	}

	Map<String, dynamic> toJson() => _$SupplierToJson(this);

	Supplier copyWith({
		String? locationName,
		String? name,
		int? supplierId,
		int? locationId,
	}) {
		return Supplier(
			locationName: locationName ?? this.locationName,
			name: name ?? this.name,
			supplierId: supplierId ?? this.supplierId,
			locationId: locationId ?? this.locationId,
		);
	}

	@override
	List<Object?> get props => [locationName, name, supplierId, locationId];
}
