// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'component_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComponentModel {

 String get id; String get createdAt; String get updatedAt; String get equipmentComponentId; String get componentID; String get name; String get componentRefDataId; String get equipmentId; String get familyId; String get dateInService; int get operatingPressure; int get operatingPressureShell; int get operatingTemperature; String get areaHumidityId; String? get foundationTypeId; String get initialFluidPhaseId; bool get isToxicMixture; int? get percentToxic; dynamic get inventory; int get detectionTime; int get isolationTime; dynamic get designPressure; dynamic get designPressureShellSide; dynamic get designTemperature; dynamic get designTemperatureShellSide; dynamic get diameter; dynamic get length; dynamic get fillHeight; dynamic get norminalThickness; String? get stressLookupTableId; String? get bmCode; String? get bmYear; String? get bmSpec; String? get bmGrade; String? get weldJointEffyId; bool get isInsulated; String? get insulationTypeId; int get pipingCircuitLength; bool get isPWHT; int? get courseNumber; String get isEntryPossibleId; String? get corrosiveProduct; String get internalCorrosionTypeId; String get internalCorrosionTypeShellSideId; bool get isPredictableIntCorrLocation; bool get isPredictableIntCorrLocationShellSide; int get estimatedInternalCorrosionRate; int get estimatedExternalCorrosionRate; dynamic get measuredExternalCorrosionRate; String? get sourceOfCalculatedCorrosionRateId; String get lastKnownInspectionDate; String get onlineMonitoringFlagId; String get keyProcessVariableId; String get electricalResistanceProbeId; String get corrosionCouponsId; String get linerInstallationDate; String get linerConditionId; String get immersionGradeCoatingQualityId; bool get isDeleted; ComponentRefDataModel? get componentRefData;
/// Create a copy of ComponentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComponentModelCopyWith<ComponentModel> get copyWith => _$ComponentModelCopyWithImpl<ComponentModel>(this as ComponentModel, _$identity);

  /// Serializes this ComponentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComponentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentComponentId, equipmentComponentId) || other.equipmentComponentId == equipmentComponentId)&&(identical(other.componentID, componentID) || other.componentID == componentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.componentRefDataId, componentRefDataId) || other.componentRefDataId == componentRefDataId)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.familyId, familyId) || other.familyId == familyId)&&(identical(other.dateInService, dateInService) || other.dateInService == dateInService)&&(identical(other.operatingPressure, operatingPressure) || other.operatingPressure == operatingPressure)&&(identical(other.operatingPressureShell, operatingPressureShell) || other.operatingPressureShell == operatingPressureShell)&&(identical(other.operatingTemperature, operatingTemperature) || other.operatingTemperature == operatingTemperature)&&(identical(other.areaHumidityId, areaHumidityId) || other.areaHumidityId == areaHumidityId)&&(identical(other.foundationTypeId, foundationTypeId) || other.foundationTypeId == foundationTypeId)&&(identical(other.initialFluidPhaseId, initialFluidPhaseId) || other.initialFluidPhaseId == initialFluidPhaseId)&&(identical(other.isToxicMixture, isToxicMixture) || other.isToxicMixture == isToxicMixture)&&(identical(other.percentToxic, percentToxic) || other.percentToxic == percentToxic)&&const DeepCollectionEquality().equals(other.inventory, inventory)&&(identical(other.detectionTime, detectionTime) || other.detectionTime == detectionTime)&&(identical(other.isolationTime, isolationTime) || other.isolationTime == isolationTime)&&const DeepCollectionEquality().equals(other.designPressure, designPressure)&&const DeepCollectionEquality().equals(other.designPressureShellSide, designPressureShellSide)&&const DeepCollectionEquality().equals(other.designTemperature, designTemperature)&&const DeepCollectionEquality().equals(other.designTemperatureShellSide, designTemperatureShellSide)&&const DeepCollectionEquality().equals(other.diameter, diameter)&&const DeepCollectionEquality().equals(other.length, length)&&const DeepCollectionEquality().equals(other.fillHeight, fillHeight)&&const DeepCollectionEquality().equals(other.norminalThickness, norminalThickness)&&(identical(other.stressLookupTableId, stressLookupTableId) || other.stressLookupTableId == stressLookupTableId)&&(identical(other.bmCode, bmCode) || other.bmCode == bmCode)&&(identical(other.bmYear, bmYear) || other.bmYear == bmYear)&&(identical(other.bmSpec, bmSpec) || other.bmSpec == bmSpec)&&(identical(other.bmGrade, bmGrade) || other.bmGrade == bmGrade)&&(identical(other.weldJointEffyId, weldJointEffyId) || other.weldJointEffyId == weldJointEffyId)&&(identical(other.isInsulated, isInsulated) || other.isInsulated == isInsulated)&&(identical(other.insulationTypeId, insulationTypeId) || other.insulationTypeId == insulationTypeId)&&(identical(other.pipingCircuitLength, pipingCircuitLength) || other.pipingCircuitLength == pipingCircuitLength)&&(identical(other.isPWHT, isPWHT) || other.isPWHT == isPWHT)&&(identical(other.courseNumber, courseNumber) || other.courseNumber == courseNumber)&&(identical(other.isEntryPossibleId, isEntryPossibleId) || other.isEntryPossibleId == isEntryPossibleId)&&(identical(other.corrosiveProduct, corrosiveProduct) || other.corrosiveProduct == corrosiveProduct)&&(identical(other.internalCorrosionTypeId, internalCorrosionTypeId) || other.internalCorrosionTypeId == internalCorrosionTypeId)&&(identical(other.internalCorrosionTypeShellSideId, internalCorrosionTypeShellSideId) || other.internalCorrosionTypeShellSideId == internalCorrosionTypeShellSideId)&&(identical(other.isPredictableIntCorrLocation, isPredictableIntCorrLocation) || other.isPredictableIntCorrLocation == isPredictableIntCorrLocation)&&(identical(other.isPredictableIntCorrLocationShellSide, isPredictableIntCorrLocationShellSide) || other.isPredictableIntCorrLocationShellSide == isPredictableIntCorrLocationShellSide)&&(identical(other.estimatedInternalCorrosionRate, estimatedInternalCorrosionRate) || other.estimatedInternalCorrosionRate == estimatedInternalCorrosionRate)&&(identical(other.estimatedExternalCorrosionRate, estimatedExternalCorrosionRate) || other.estimatedExternalCorrosionRate == estimatedExternalCorrosionRate)&&const DeepCollectionEquality().equals(other.measuredExternalCorrosionRate, measuredExternalCorrosionRate)&&(identical(other.sourceOfCalculatedCorrosionRateId, sourceOfCalculatedCorrosionRateId) || other.sourceOfCalculatedCorrosionRateId == sourceOfCalculatedCorrosionRateId)&&(identical(other.lastKnownInspectionDate, lastKnownInspectionDate) || other.lastKnownInspectionDate == lastKnownInspectionDate)&&(identical(other.onlineMonitoringFlagId, onlineMonitoringFlagId) || other.onlineMonitoringFlagId == onlineMonitoringFlagId)&&(identical(other.keyProcessVariableId, keyProcessVariableId) || other.keyProcessVariableId == keyProcessVariableId)&&(identical(other.electricalResistanceProbeId, electricalResistanceProbeId) || other.electricalResistanceProbeId == electricalResistanceProbeId)&&(identical(other.corrosionCouponsId, corrosionCouponsId) || other.corrosionCouponsId == corrosionCouponsId)&&(identical(other.linerInstallationDate, linerInstallationDate) || other.linerInstallationDate == linerInstallationDate)&&(identical(other.linerConditionId, linerConditionId) || other.linerConditionId == linerConditionId)&&(identical(other.immersionGradeCoatingQualityId, immersionGradeCoatingQualityId) || other.immersionGradeCoatingQualityId == immersionGradeCoatingQualityId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.componentRefData, componentRefData) || other.componentRefData == componentRefData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,equipmentComponentId,componentID,name,componentRefDataId,equipmentId,familyId,dateInService,operatingPressure,operatingPressureShell,operatingTemperature,areaHumidityId,foundationTypeId,initialFluidPhaseId,isToxicMixture,percentToxic,const DeepCollectionEquality().hash(inventory),detectionTime,isolationTime,const DeepCollectionEquality().hash(designPressure),const DeepCollectionEquality().hash(designPressureShellSide),const DeepCollectionEquality().hash(designTemperature),const DeepCollectionEquality().hash(designTemperatureShellSide),const DeepCollectionEquality().hash(diameter),const DeepCollectionEquality().hash(length),const DeepCollectionEquality().hash(fillHeight),const DeepCollectionEquality().hash(norminalThickness),stressLookupTableId,bmCode,bmYear,bmSpec,bmGrade,weldJointEffyId,isInsulated,insulationTypeId,pipingCircuitLength,isPWHT,courseNumber,isEntryPossibleId,corrosiveProduct,internalCorrosionTypeId,internalCorrosionTypeShellSideId,isPredictableIntCorrLocation,isPredictableIntCorrLocationShellSide,estimatedInternalCorrosionRate,estimatedExternalCorrosionRate,const DeepCollectionEquality().hash(measuredExternalCorrosionRate),sourceOfCalculatedCorrosionRateId,lastKnownInspectionDate,onlineMonitoringFlagId,keyProcessVariableId,electricalResistanceProbeId,corrosionCouponsId,linerInstallationDate,linerConditionId,immersionGradeCoatingQualityId,isDeleted,componentRefData]);

@override
String toString() {
  return 'ComponentModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentComponentId: $equipmentComponentId, componentID: $componentID, name: $name, componentRefDataId: $componentRefDataId, equipmentId: $equipmentId, familyId: $familyId, dateInService: $dateInService, operatingPressure: $operatingPressure, operatingPressureShell: $operatingPressureShell, operatingTemperature: $operatingTemperature, areaHumidityId: $areaHumidityId, foundationTypeId: $foundationTypeId, initialFluidPhaseId: $initialFluidPhaseId, isToxicMixture: $isToxicMixture, percentToxic: $percentToxic, inventory: $inventory, detectionTime: $detectionTime, isolationTime: $isolationTime, designPressure: $designPressure, designPressureShellSide: $designPressureShellSide, designTemperature: $designTemperature, designTemperatureShellSide: $designTemperatureShellSide, diameter: $diameter, length: $length, fillHeight: $fillHeight, norminalThickness: $norminalThickness, stressLookupTableId: $stressLookupTableId, bmCode: $bmCode, bmYear: $bmYear, bmSpec: $bmSpec, bmGrade: $bmGrade, weldJointEffyId: $weldJointEffyId, isInsulated: $isInsulated, insulationTypeId: $insulationTypeId, pipingCircuitLength: $pipingCircuitLength, isPWHT: $isPWHT, courseNumber: $courseNumber, isEntryPossibleId: $isEntryPossibleId, corrosiveProduct: $corrosiveProduct, internalCorrosionTypeId: $internalCorrosionTypeId, internalCorrosionTypeShellSideId: $internalCorrosionTypeShellSideId, isPredictableIntCorrLocation: $isPredictableIntCorrLocation, isPredictableIntCorrLocationShellSide: $isPredictableIntCorrLocationShellSide, estimatedInternalCorrosionRate: $estimatedInternalCorrosionRate, estimatedExternalCorrosionRate: $estimatedExternalCorrosionRate, measuredExternalCorrosionRate: $measuredExternalCorrosionRate, sourceOfCalculatedCorrosionRateId: $sourceOfCalculatedCorrosionRateId, lastKnownInspectionDate: $lastKnownInspectionDate, onlineMonitoringFlagId: $onlineMonitoringFlagId, keyProcessVariableId: $keyProcessVariableId, electricalResistanceProbeId: $electricalResistanceProbeId, corrosionCouponsId: $corrosionCouponsId, linerInstallationDate: $linerInstallationDate, linerConditionId: $linerConditionId, immersionGradeCoatingQualityId: $immersionGradeCoatingQualityId, isDeleted: $isDeleted, componentRefData: $componentRefData)';
}


}

/// @nodoc
abstract mixin class $ComponentModelCopyWith<$Res>  {
  factory $ComponentModelCopyWith(ComponentModel value, $Res Function(ComponentModel) _then) = _$ComponentModelCopyWithImpl;
@useResult
$Res call({
 String id, String createdAt, String updatedAt, String equipmentComponentId, String componentID, String name, String componentRefDataId, String equipmentId, String familyId, String dateInService, int operatingPressure, int operatingPressureShell, int operatingTemperature, String areaHumidityId, String? foundationTypeId, String initialFluidPhaseId, bool isToxicMixture, int? percentToxic, dynamic inventory, int detectionTime, int isolationTime, dynamic designPressure, dynamic designPressureShellSide, dynamic designTemperature, dynamic designTemperatureShellSide, dynamic diameter, dynamic length, dynamic fillHeight, dynamic norminalThickness, String? stressLookupTableId, String? bmCode, String? bmYear, String? bmSpec, String? bmGrade, String? weldJointEffyId, bool isInsulated, String? insulationTypeId, int pipingCircuitLength, bool isPWHT, int? courseNumber, String isEntryPossibleId, String? corrosiveProduct, String internalCorrosionTypeId, String internalCorrosionTypeShellSideId, bool isPredictableIntCorrLocation, bool isPredictableIntCorrLocationShellSide, int estimatedInternalCorrosionRate, int estimatedExternalCorrosionRate, dynamic measuredExternalCorrosionRate, String? sourceOfCalculatedCorrosionRateId, String lastKnownInspectionDate, String onlineMonitoringFlagId, String keyProcessVariableId, String electricalResistanceProbeId, String corrosionCouponsId, String linerInstallationDate, String linerConditionId, String immersionGradeCoatingQualityId, bool isDeleted, ComponentRefDataModel? componentRefData
});


$ComponentRefDataModelCopyWith<$Res>? get componentRefData;

}
/// @nodoc
class _$ComponentModelCopyWithImpl<$Res>
    implements $ComponentModelCopyWith<$Res> {
  _$ComponentModelCopyWithImpl(this._self, this._then);

  final ComponentModel _self;
  final $Res Function(ComponentModel) _then;

/// Create a copy of ComponentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? equipmentComponentId = null,Object? componentID = null,Object? name = null,Object? componentRefDataId = null,Object? equipmentId = null,Object? familyId = null,Object? dateInService = null,Object? operatingPressure = null,Object? operatingPressureShell = null,Object? operatingTemperature = null,Object? areaHumidityId = null,Object? foundationTypeId = freezed,Object? initialFluidPhaseId = null,Object? isToxicMixture = null,Object? percentToxic = freezed,Object? inventory = freezed,Object? detectionTime = null,Object? isolationTime = null,Object? designPressure = freezed,Object? designPressureShellSide = freezed,Object? designTemperature = freezed,Object? designTemperatureShellSide = freezed,Object? diameter = freezed,Object? length = freezed,Object? fillHeight = freezed,Object? norminalThickness = freezed,Object? stressLookupTableId = freezed,Object? bmCode = freezed,Object? bmYear = freezed,Object? bmSpec = freezed,Object? bmGrade = freezed,Object? weldJointEffyId = freezed,Object? isInsulated = null,Object? insulationTypeId = freezed,Object? pipingCircuitLength = null,Object? isPWHT = null,Object? courseNumber = freezed,Object? isEntryPossibleId = null,Object? corrosiveProduct = freezed,Object? internalCorrosionTypeId = null,Object? internalCorrosionTypeShellSideId = null,Object? isPredictableIntCorrLocation = null,Object? isPredictableIntCorrLocationShellSide = null,Object? estimatedInternalCorrosionRate = null,Object? estimatedExternalCorrosionRate = null,Object? measuredExternalCorrosionRate = freezed,Object? sourceOfCalculatedCorrosionRateId = freezed,Object? lastKnownInspectionDate = null,Object? onlineMonitoringFlagId = null,Object? keyProcessVariableId = null,Object? electricalResistanceProbeId = null,Object? corrosionCouponsId = null,Object? linerInstallationDate = null,Object? linerConditionId = null,Object? immersionGradeCoatingQualityId = null,Object? isDeleted = null,Object? componentRefData = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,equipmentComponentId: null == equipmentComponentId ? _self.equipmentComponentId : equipmentComponentId // ignore: cast_nullable_to_non_nullable
as String,componentID: null == componentID ? _self.componentID : componentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,componentRefDataId: null == componentRefDataId ? _self.componentRefDataId : componentRefDataId // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,familyId: null == familyId ? _self.familyId : familyId // ignore: cast_nullable_to_non_nullable
as String,dateInService: null == dateInService ? _self.dateInService : dateInService // ignore: cast_nullable_to_non_nullable
as String,operatingPressure: null == operatingPressure ? _self.operatingPressure : operatingPressure // ignore: cast_nullable_to_non_nullable
as int,operatingPressureShell: null == operatingPressureShell ? _self.operatingPressureShell : operatingPressureShell // ignore: cast_nullable_to_non_nullable
as int,operatingTemperature: null == operatingTemperature ? _self.operatingTemperature : operatingTemperature // ignore: cast_nullable_to_non_nullable
as int,areaHumidityId: null == areaHumidityId ? _self.areaHumidityId : areaHumidityId // ignore: cast_nullable_to_non_nullable
as String,foundationTypeId: freezed == foundationTypeId ? _self.foundationTypeId : foundationTypeId // ignore: cast_nullable_to_non_nullable
as String?,initialFluidPhaseId: null == initialFluidPhaseId ? _self.initialFluidPhaseId : initialFluidPhaseId // ignore: cast_nullable_to_non_nullable
as String,isToxicMixture: null == isToxicMixture ? _self.isToxicMixture : isToxicMixture // ignore: cast_nullable_to_non_nullable
as bool,percentToxic: freezed == percentToxic ? _self.percentToxic : percentToxic // ignore: cast_nullable_to_non_nullable
as int?,inventory: freezed == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as dynamic,detectionTime: null == detectionTime ? _self.detectionTime : detectionTime // ignore: cast_nullable_to_non_nullable
as int,isolationTime: null == isolationTime ? _self.isolationTime : isolationTime // ignore: cast_nullable_to_non_nullable
as int,designPressure: freezed == designPressure ? _self.designPressure : designPressure // ignore: cast_nullable_to_non_nullable
as dynamic,designPressureShellSide: freezed == designPressureShellSide ? _self.designPressureShellSide : designPressureShellSide // ignore: cast_nullable_to_non_nullable
as dynamic,designTemperature: freezed == designTemperature ? _self.designTemperature : designTemperature // ignore: cast_nullable_to_non_nullable
as dynamic,designTemperatureShellSide: freezed == designTemperatureShellSide ? _self.designTemperatureShellSide : designTemperatureShellSide // ignore: cast_nullable_to_non_nullable
as dynamic,diameter: freezed == diameter ? _self.diameter : diameter // ignore: cast_nullable_to_non_nullable
as dynamic,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as dynamic,fillHeight: freezed == fillHeight ? _self.fillHeight : fillHeight // ignore: cast_nullable_to_non_nullable
as dynamic,norminalThickness: freezed == norminalThickness ? _self.norminalThickness : norminalThickness // ignore: cast_nullable_to_non_nullable
as dynamic,stressLookupTableId: freezed == stressLookupTableId ? _self.stressLookupTableId : stressLookupTableId // ignore: cast_nullable_to_non_nullable
as String?,bmCode: freezed == bmCode ? _self.bmCode : bmCode // ignore: cast_nullable_to_non_nullable
as String?,bmYear: freezed == bmYear ? _self.bmYear : bmYear // ignore: cast_nullable_to_non_nullable
as String?,bmSpec: freezed == bmSpec ? _self.bmSpec : bmSpec // ignore: cast_nullable_to_non_nullable
as String?,bmGrade: freezed == bmGrade ? _self.bmGrade : bmGrade // ignore: cast_nullable_to_non_nullable
as String?,weldJointEffyId: freezed == weldJointEffyId ? _self.weldJointEffyId : weldJointEffyId // ignore: cast_nullable_to_non_nullable
as String?,isInsulated: null == isInsulated ? _self.isInsulated : isInsulated // ignore: cast_nullable_to_non_nullable
as bool,insulationTypeId: freezed == insulationTypeId ? _self.insulationTypeId : insulationTypeId // ignore: cast_nullable_to_non_nullable
as String?,pipingCircuitLength: null == pipingCircuitLength ? _self.pipingCircuitLength : pipingCircuitLength // ignore: cast_nullable_to_non_nullable
as int,isPWHT: null == isPWHT ? _self.isPWHT : isPWHT // ignore: cast_nullable_to_non_nullable
as bool,courseNumber: freezed == courseNumber ? _self.courseNumber : courseNumber // ignore: cast_nullable_to_non_nullable
as int?,isEntryPossibleId: null == isEntryPossibleId ? _self.isEntryPossibleId : isEntryPossibleId // ignore: cast_nullable_to_non_nullable
as String,corrosiveProduct: freezed == corrosiveProduct ? _self.corrosiveProduct : corrosiveProduct // ignore: cast_nullable_to_non_nullable
as String?,internalCorrosionTypeId: null == internalCorrosionTypeId ? _self.internalCorrosionTypeId : internalCorrosionTypeId // ignore: cast_nullable_to_non_nullable
as String,internalCorrosionTypeShellSideId: null == internalCorrosionTypeShellSideId ? _self.internalCorrosionTypeShellSideId : internalCorrosionTypeShellSideId // ignore: cast_nullable_to_non_nullable
as String,isPredictableIntCorrLocation: null == isPredictableIntCorrLocation ? _self.isPredictableIntCorrLocation : isPredictableIntCorrLocation // ignore: cast_nullable_to_non_nullable
as bool,isPredictableIntCorrLocationShellSide: null == isPredictableIntCorrLocationShellSide ? _self.isPredictableIntCorrLocationShellSide : isPredictableIntCorrLocationShellSide // ignore: cast_nullable_to_non_nullable
as bool,estimatedInternalCorrosionRate: null == estimatedInternalCorrosionRate ? _self.estimatedInternalCorrosionRate : estimatedInternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as int,estimatedExternalCorrosionRate: null == estimatedExternalCorrosionRate ? _self.estimatedExternalCorrosionRate : estimatedExternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as int,measuredExternalCorrosionRate: freezed == measuredExternalCorrosionRate ? _self.measuredExternalCorrosionRate : measuredExternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as dynamic,sourceOfCalculatedCorrosionRateId: freezed == sourceOfCalculatedCorrosionRateId ? _self.sourceOfCalculatedCorrosionRateId : sourceOfCalculatedCorrosionRateId // ignore: cast_nullable_to_non_nullable
as String?,lastKnownInspectionDate: null == lastKnownInspectionDate ? _self.lastKnownInspectionDate : lastKnownInspectionDate // ignore: cast_nullable_to_non_nullable
as String,onlineMonitoringFlagId: null == onlineMonitoringFlagId ? _self.onlineMonitoringFlagId : onlineMonitoringFlagId // ignore: cast_nullable_to_non_nullable
as String,keyProcessVariableId: null == keyProcessVariableId ? _self.keyProcessVariableId : keyProcessVariableId // ignore: cast_nullable_to_non_nullable
as String,electricalResistanceProbeId: null == electricalResistanceProbeId ? _self.electricalResistanceProbeId : electricalResistanceProbeId // ignore: cast_nullable_to_non_nullable
as String,corrosionCouponsId: null == corrosionCouponsId ? _self.corrosionCouponsId : corrosionCouponsId // ignore: cast_nullable_to_non_nullable
as String,linerInstallationDate: null == linerInstallationDate ? _self.linerInstallationDate : linerInstallationDate // ignore: cast_nullable_to_non_nullable
as String,linerConditionId: null == linerConditionId ? _self.linerConditionId : linerConditionId // ignore: cast_nullable_to_non_nullable
as String,immersionGradeCoatingQualityId: null == immersionGradeCoatingQualityId ? _self.immersionGradeCoatingQualityId : immersionGradeCoatingQualityId // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,componentRefData: freezed == componentRefData ? _self.componentRefData : componentRefData // ignore: cast_nullable_to_non_nullable
as ComponentRefDataModel?,
  ));
}
/// Create a copy of ComponentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentRefDataModelCopyWith<$Res>? get componentRefData {
    if (_self.componentRefData == null) {
    return null;
  }

  return $ComponentRefDataModelCopyWith<$Res>(_self.componentRefData!, (value) {
    return _then(_self.copyWith(componentRefData: value));
  });
}
}


/// Adds pattern-matching-related methods to [ComponentModel].
extension ComponentModelPatterns on ComponentModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComponentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComponentModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComponentModel value)  $default,){
final _that = this;
switch (_that) {
case _ComponentModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComponentModel value)?  $default,){
final _that = this;
switch (_that) {
case _ComponentModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String equipmentComponentId,  String componentID,  String name,  String componentRefDataId,  String equipmentId,  String familyId,  String dateInService,  int operatingPressure,  int operatingPressureShell,  int operatingTemperature,  String areaHumidityId,  String? foundationTypeId,  String initialFluidPhaseId,  bool isToxicMixture,  int? percentToxic,  dynamic inventory,  int detectionTime,  int isolationTime,  dynamic designPressure,  dynamic designPressureShellSide,  dynamic designTemperature,  dynamic designTemperatureShellSide,  dynamic diameter,  dynamic length,  dynamic fillHeight,  dynamic norminalThickness,  String? stressLookupTableId,  String? bmCode,  String? bmYear,  String? bmSpec,  String? bmGrade,  String? weldJointEffyId,  bool isInsulated,  String? insulationTypeId,  int pipingCircuitLength,  bool isPWHT,  int? courseNumber,  String isEntryPossibleId,  String? corrosiveProduct,  String internalCorrosionTypeId,  String internalCorrosionTypeShellSideId,  bool isPredictableIntCorrLocation,  bool isPredictableIntCorrLocationShellSide,  int estimatedInternalCorrosionRate,  int estimatedExternalCorrosionRate,  dynamic measuredExternalCorrosionRate,  String? sourceOfCalculatedCorrosionRateId,  String lastKnownInspectionDate,  String onlineMonitoringFlagId,  String keyProcessVariableId,  String electricalResistanceProbeId,  String corrosionCouponsId,  String linerInstallationDate,  String linerConditionId,  String immersionGradeCoatingQualityId,  bool isDeleted,  ComponentRefDataModel? componentRefData)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComponentModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentComponentId,_that.componentID,_that.name,_that.componentRefDataId,_that.equipmentId,_that.familyId,_that.dateInService,_that.operatingPressure,_that.operatingPressureShell,_that.operatingTemperature,_that.areaHumidityId,_that.foundationTypeId,_that.initialFluidPhaseId,_that.isToxicMixture,_that.percentToxic,_that.inventory,_that.detectionTime,_that.isolationTime,_that.designPressure,_that.designPressureShellSide,_that.designTemperature,_that.designTemperatureShellSide,_that.diameter,_that.length,_that.fillHeight,_that.norminalThickness,_that.stressLookupTableId,_that.bmCode,_that.bmYear,_that.bmSpec,_that.bmGrade,_that.weldJointEffyId,_that.isInsulated,_that.insulationTypeId,_that.pipingCircuitLength,_that.isPWHT,_that.courseNumber,_that.isEntryPossibleId,_that.corrosiveProduct,_that.internalCorrosionTypeId,_that.internalCorrosionTypeShellSideId,_that.isPredictableIntCorrLocation,_that.isPredictableIntCorrLocationShellSide,_that.estimatedInternalCorrosionRate,_that.estimatedExternalCorrosionRate,_that.measuredExternalCorrosionRate,_that.sourceOfCalculatedCorrosionRateId,_that.lastKnownInspectionDate,_that.onlineMonitoringFlagId,_that.keyProcessVariableId,_that.electricalResistanceProbeId,_that.corrosionCouponsId,_that.linerInstallationDate,_that.linerConditionId,_that.immersionGradeCoatingQualityId,_that.isDeleted,_that.componentRefData);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String createdAt,  String updatedAt,  String equipmentComponentId,  String componentID,  String name,  String componentRefDataId,  String equipmentId,  String familyId,  String dateInService,  int operatingPressure,  int operatingPressureShell,  int operatingTemperature,  String areaHumidityId,  String? foundationTypeId,  String initialFluidPhaseId,  bool isToxicMixture,  int? percentToxic,  dynamic inventory,  int detectionTime,  int isolationTime,  dynamic designPressure,  dynamic designPressureShellSide,  dynamic designTemperature,  dynamic designTemperatureShellSide,  dynamic diameter,  dynamic length,  dynamic fillHeight,  dynamic norminalThickness,  String? stressLookupTableId,  String? bmCode,  String? bmYear,  String? bmSpec,  String? bmGrade,  String? weldJointEffyId,  bool isInsulated,  String? insulationTypeId,  int pipingCircuitLength,  bool isPWHT,  int? courseNumber,  String isEntryPossibleId,  String? corrosiveProduct,  String internalCorrosionTypeId,  String internalCorrosionTypeShellSideId,  bool isPredictableIntCorrLocation,  bool isPredictableIntCorrLocationShellSide,  int estimatedInternalCorrosionRate,  int estimatedExternalCorrosionRate,  dynamic measuredExternalCorrosionRate,  String? sourceOfCalculatedCorrosionRateId,  String lastKnownInspectionDate,  String onlineMonitoringFlagId,  String keyProcessVariableId,  String electricalResistanceProbeId,  String corrosionCouponsId,  String linerInstallationDate,  String linerConditionId,  String immersionGradeCoatingQualityId,  bool isDeleted,  ComponentRefDataModel? componentRefData)  $default,) {final _that = this;
switch (_that) {
case _ComponentModel():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentComponentId,_that.componentID,_that.name,_that.componentRefDataId,_that.equipmentId,_that.familyId,_that.dateInService,_that.operatingPressure,_that.operatingPressureShell,_that.operatingTemperature,_that.areaHumidityId,_that.foundationTypeId,_that.initialFluidPhaseId,_that.isToxicMixture,_that.percentToxic,_that.inventory,_that.detectionTime,_that.isolationTime,_that.designPressure,_that.designPressureShellSide,_that.designTemperature,_that.designTemperatureShellSide,_that.diameter,_that.length,_that.fillHeight,_that.norminalThickness,_that.stressLookupTableId,_that.bmCode,_that.bmYear,_that.bmSpec,_that.bmGrade,_that.weldJointEffyId,_that.isInsulated,_that.insulationTypeId,_that.pipingCircuitLength,_that.isPWHT,_that.courseNumber,_that.isEntryPossibleId,_that.corrosiveProduct,_that.internalCorrosionTypeId,_that.internalCorrosionTypeShellSideId,_that.isPredictableIntCorrLocation,_that.isPredictableIntCorrLocationShellSide,_that.estimatedInternalCorrosionRate,_that.estimatedExternalCorrosionRate,_that.measuredExternalCorrosionRate,_that.sourceOfCalculatedCorrosionRateId,_that.lastKnownInspectionDate,_that.onlineMonitoringFlagId,_that.keyProcessVariableId,_that.electricalResistanceProbeId,_that.corrosionCouponsId,_that.linerInstallationDate,_that.linerConditionId,_that.immersionGradeCoatingQualityId,_that.isDeleted,_that.componentRefData);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String createdAt,  String updatedAt,  String equipmentComponentId,  String componentID,  String name,  String componentRefDataId,  String equipmentId,  String familyId,  String dateInService,  int operatingPressure,  int operatingPressureShell,  int operatingTemperature,  String areaHumidityId,  String? foundationTypeId,  String initialFluidPhaseId,  bool isToxicMixture,  int? percentToxic,  dynamic inventory,  int detectionTime,  int isolationTime,  dynamic designPressure,  dynamic designPressureShellSide,  dynamic designTemperature,  dynamic designTemperatureShellSide,  dynamic diameter,  dynamic length,  dynamic fillHeight,  dynamic norminalThickness,  String? stressLookupTableId,  String? bmCode,  String? bmYear,  String? bmSpec,  String? bmGrade,  String? weldJointEffyId,  bool isInsulated,  String? insulationTypeId,  int pipingCircuitLength,  bool isPWHT,  int? courseNumber,  String isEntryPossibleId,  String? corrosiveProduct,  String internalCorrosionTypeId,  String internalCorrosionTypeShellSideId,  bool isPredictableIntCorrLocation,  bool isPredictableIntCorrLocationShellSide,  int estimatedInternalCorrosionRate,  int estimatedExternalCorrosionRate,  dynamic measuredExternalCorrosionRate,  String? sourceOfCalculatedCorrosionRateId,  String lastKnownInspectionDate,  String onlineMonitoringFlagId,  String keyProcessVariableId,  String electricalResistanceProbeId,  String corrosionCouponsId,  String linerInstallationDate,  String linerConditionId,  String immersionGradeCoatingQualityId,  bool isDeleted,  ComponentRefDataModel? componentRefData)?  $default,) {final _that = this;
switch (_that) {
case _ComponentModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.equipmentComponentId,_that.componentID,_that.name,_that.componentRefDataId,_that.equipmentId,_that.familyId,_that.dateInService,_that.operatingPressure,_that.operatingPressureShell,_that.operatingTemperature,_that.areaHumidityId,_that.foundationTypeId,_that.initialFluidPhaseId,_that.isToxicMixture,_that.percentToxic,_that.inventory,_that.detectionTime,_that.isolationTime,_that.designPressure,_that.designPressureShellSide,_that.designTemperature,_that.designTemperatureShellSide,_that.diameter,_that.length,_that.fillHeight,_that.norminalThickness,_that.stressLookupTableId,_that.bmCode,_that.bmYear,_that.bmSpec,_that.bmGrade,_that.weldJointEffyId,_that.isInsulated,_that.insulationTypeId,_that.pipingCircuitLength,_that.isPWHT,_that.courseNumber,_that.isEntryPossibleId,_that.corrosiveProduct,_that.internalCorrosionTypeId,_that.internalCorrosionTypeShellSideId,_that.isPredictableIntCorrLocation,_that.isPredictableIntCorrLocationShellSide,_that.estimatedInternalCorrosionRate,_that.estimatedExternalCorrosionRate,_that.measuredExternalCorrosionRate,_that.sourceOfCalculatedCorrosionRateId,_that.lastKnownInspectionDate,_that.onlineMonitoringFlagId,_that.keyProcessVariableId,_that.electricalResistanceProbeId,_that.corrosionCouponsId,_that.linerInstallationDate,_that.linerConditionId,_that.immersionGradeCoatingQualityId,_that.isDeleted,_that.componentRefData);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComponentModel implements ComponentModel {
  const _ComponentModel({required this.id, required this.createdAt, required this.updatedAt, required this.equipmentComponentId, required this.componentID, required this.name, required this.componentRefDataId, required this.equipmentId, required this.familyId, required this.dateInService, required this.operatingPressure, required this.operatingPressureShell, required this.operatingTemperature, required this.areaHumidityId, this.foundationTypeId, required this.initialFluidPhaseId, required this.isToxicMixture, this.percentToxic, this.inventory, required this.detectionTime, required this.isolationTime, this.designPressure, this.designPressureShellSide, this.designTemperature, this.designTemperatureShellSide, this.diameter, this.length, this.fillHeight, this.norminalThickness, this.stressLookupTableId, this.bmCode, this.bmYear, this.bmSpec, this.bmGrade, this.weldJointEffyId, required this.isInsulated, this.insulationTypeId, required this.pipingCircuitLength, required this.isPWHT, this.courseNumber, required this.isEntryPossibleId, this.corrosiveProduct, required this.internalCorrosionTypeId, required this.internalCorrosionTypeShellSideId, required this.isPredictableIntCorrLocation, required this.isPredictableIntCorrLocationShellSide, required this.estimatedInternalCorrosionRate, required this.estimatedExternalCorrosionRate, this.measuredExternalCorrosionRate, this.sourceOfCalculatedCorrosionRateId, required this.lastKnownInspectionDate, required this.onlineMonitoringFlagId, required this.keyProcessVariableId, required this.electricalResistanceProbeId, required this.corrosionCouponsId, required this.linerInstallationDate, required this.linerConditionId, required this.immersionGradeCoatingQualityId, required this.isDeleted, this.componentRefData});
  factory _ComponentModel.fromJson(Map<String, dynamic> json) => _$ComponentModelFromJson(json);

@override final  String id;
@override final  String createdAt;
@override final  String updatedAt;
@override final  String equipmentComponentId;
@override final  String componentID;
@override final  String name;
@override final  String componentRefDataId;
@override final  String equipmentId;
@override final  String familyId;
@override final  String dateInService;
@override final  int operatingPressure;
@override final  int operatingPressureShell;
@override final  int operatingTemperature;
@override final  String areaHumidityId;
@override final  String? foundationTypeId;
@override final  String initialFluidPhaseId;
@override final  bool isToxicMixture;
@override final  int? percentToxic;
@override final  dynamic inventory;
@override final  int detectionTime;
@override final  int isolationTime;
@override final  dynamic designPressure;
@override final  dynamic designPressureShellSide;
@override final  dynamic designTemperature;
@override final  dynamic designTemperatureShellSide;
@override final  dynamic diameter;
@override final  dynamic length;
@override final  dynamic fillHeight;
@override final  dynamic norminalThickness;
@override final  String? stressLookupTableId;
@override final  String? bmCode;
@override final  String? bmYear;
@override final  String? bmSpec;
@override final  String? bmGrade;
@override final  String? weldJointEffyId;
@override final  bool isInsulated;
@override final  String? insulationTypeId;
@override final  int pipingCircuitLength;
@override final  bool isPWHT;
@override final  int? courseNumber;
@override final  String isEntryPossibleId;
@override final  String? corrosiveProduct;
@override final  String internalCorrosionTypeId;
@override final  String internalCorrosionTypeShellSideId;
@override final  bool isPredictableIntCorrLocation;
@override final  bool isPredictableIntCorrLocationShellSide;
@override final  int estimatedInternalCorrosionRate;
@override final  int estimatedExternalCorrosionRate;
@override final  dynamic measuredExternalCorrosionRate;
@override final  String? sourceOfCalculatedCorrosionRateId;
@override final  String lastKnownInspectionDate;
@override final  String onlineMonitoringFlagId;
@override final  String keyProcessVariableId;
@override final  String electricalResistanceProbeId;
@override final  String corrosionCouponsId;
@override final  String linerInstallationDate;
@override final  String linerConditionId;
@override final  String immersionGradeCoatingQualityId;
@override final  bool isDeleted;
@override final  ComponentRefDataModel? componentRefData;

/// Create a copy of ComponentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComponentModelCopyWith<_ComponentModel> get copyWith => __$ComponentModelCopyWithImpl<_ComponentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComponentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComponentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.equipmentComponentId, equipmentComponentId) || other.equipmentComponentId == equipmentComponentId)&&(identical(other.componentID, componentID) || other.componentID == componentID)&&(identical(other.name, name) || other.name == name)&&(identical(other.componentRefDataId, componentRefDataId) || other.componentRefDataId == componentRefDataId)&&(identical(other.equipmentId, equipmentId) || other.equipmentId == equipmentId)&&(identical(other.familyId, familyId) || other.familyId == familyId)&&(identical(other.dateInService, dateInService) || other.dateInService == dateInService)&&(identical(other.operatingPressure, operatingPressure) || other.operatingPressure == operatingPressure)&&(identical(other.operatingPressureShell, operatingPressureShell) || other.operatingPressureShell == operatingPressureShell)&&(identical(other.operatingTemperature, operatingTemperature) || other.operatingTemperature == operatingTemperature)&&(identical(other.areaHumidityId, areaHumidityId) || other.areaHumidityId == areaHumidityId)&&(identical(other.foundationTypeId, foundationTypeId) || other.foundationTypeId == foundationTypeId)&&(identical(other.initialFluidPhaseId, initialFluidPhaseId) || other.initialFluidPhaseId == initialFluidPhaseId)&&(identical(other.isToxicMixture, isToxicMixture) || other.isToxicMixture == isToxicMixture)&&(identical(other.percentToxic, percentToxic) || other.percentToxic == percentToxic)&&const DeepCollectionEquality().equals(other.inventory, inventory)&&(identical(other.detectionTime, detectionTime) || other.detectionTime == detectionTime)&&(identical(other.isolationTime, isolationTime) || other.isolationTime == isolationTime)&&const DeepCollectionEquality().equals(other.designPressure, designPressure)&&const DeepCollectionEquality().equals(other.designPressureShellSide, designPressureShellSide)&&const DeepCollectionEquality().equals(other.designTemperature, designTemperature)&&const DeepCollectionEquality().equals(other.designTemperatureShellSide, designTemperatureShellSide)&&const DeepCollectionEquality().equals(other.diameter, diameter)&&const DeepCollectionEquality().equals(other.length, length)&&const DeepCollectionEquality().equals(other.fillHeight, fillHeight)&&const DeepCollectionEquality().equals(other.norminalThickness, norminalThickness)&&(identical(other.stressLookupTableId, stressLookupTableId) || other.stressLookupTableId == stressLookupTableId)&&(identical(other.bmCode, bmCode) || other.bmCode == bmCode)&&(identical(other.bmYear, bmYear) || other.bmYear == bmYear)&&(identical(other.bmSpec, bmSpec) || other.bmSpec == bmSpec)&&(identical(other.bmGrade, bmGrade) || other.bmGrade == bmGrade)&&(identical(other.weldJointEffyId, weldJointEffyId) || other.weldJointEffyId == weldJointEffyId)&&(identical(other.isInsulated, isInsulated) || other.isInsulated == isInsulated)&&(identical(other.insulationTypeId, insulationTypeId) || other.insulationTypeId == insulationTypeId)&&(identical(other.pipingCircuitLength, pipingCircuitLength) || other.pipingCircuitLength == pipingCircuitLength)&&(identical(other.isPWHT, isPWHT) || other.isPWHT == isPWHT)&&(identical(other.courseNumber, courseNumber) || other.courseNumber == courseNumber)&&(identical(other.isEntryPossibleId, isEntryPossibleId) || other.isEntryPossibleId == isEntryPossibleId)&&(identical(other.corrosiveProduct, corrosiveProduct) || other.corrosiveProduct == corrosiveProduct)&&(identical(other.internalCorrosionTypeId, internalCorrosionTypeId) || other.internalCorrosionTypeId == internalCorrosionTypeId)&&(identical(other.internalCorrosionTypeShellSideId, internalCorrosionTypeShellSideId) || other.internalCorrosionTypeShellSideId == internalCorrosionTypeShellSideId)&&(identical(other.isPredictableIntCorrLocation, isPredictableIntCorrLocation) || other.isPredictableIntCorrLocation == isPredictableIntCorrLocation)&&(identical(other.isPredictableIntCorrLocationShellSide, isPredictableIntCorrLocationShellSide) || other.isPredictableIntCorrLocationShellSide == isPredictableIntCorrLocationShellSide)&&(identical(other.estimatedInternalCorrosionRate, estimatedInternalCorrosionRate) || other.estimatedInternalCorrosionRate == estimatedInternalCorrosionRate)&&(identical(other.estimatedExternalCorrosionRate, estimatedExternalCorrosionRate) || other.estimatedExternalCorrosionRate == estimatedExternalCorrosionRate)&&const DeepCollectionEquality().equals(other.measuredExternalCorrosionRate, measuredExternalCorrosionRate)&&(identical(other.sourceOfCalculatedCorrosionRateId, sourceOfCalculatedCorrosionRateId) || other.sourceOfCalculatedCorrosionRateId == sourceOfCalculatedCorrosionRateId)&&(identical(other.lastKnownInspectionDate, lastKnownInspectionDate) || other.lastKnownInspectionDate == lastKnownInspectionDate)&&(identical(other.onlineMonitoringFlagId, onlineMonitoringFlagId) || other.onlineMonitoringFlagId == onlineMonitoringFlagId)&&(identical(other.keyProcessVariableId, keyProcessVariableId) || other.keyProcessVariableId == keyProcessVariableId)&&(identical(other.electricalResistanceProbeId, electricalResistanceProbeId) || other.electricalResistanceProbeId == electricalResistanceProbeId)&&(identical(other.corrosionCouponsId, corrosionCouponsId) || other.corrosionCouponsId == corrosionCouponsId)&&(identical(other.linerInstallationDate, linerInstallationDate) || other.linerInstallationDate == linerInstallationDate)&&(identical(other.linerConditionId, linerConditionId) || other.linerConditionId == linerConditionId)&&(identical(other.immersionGradeCoatingQualityId, immersionGradeCoatingQualityId) || other.immersionGradeCoatingQualityId == immersionGradeCoatingQualityId)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.componentRefData, componentRefData) || other.componentRefData == componentRefData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,createdAt,updatedAt,equipmentComponentId,componentID,name,componentRefDataId,equipmentId,familyId,dateInService,operatingPressure,operatingPressureShell,operatingTemperature,areaHumidityId,foundationTypeId,initialFluidPhaseId,isToxicMixture,percentToxic,const DeepCollectionEquality().hash(inventory),detectionTime,isolationTime,const DeepCollectionEquality().hash(designPressure),const DeepCollectionEquality().hash(designPressureShellSide),const DeepCollectionEquality().hash(designTemperature),const DeepCollectionEquality().hash(designTemperatureShellSide),const DeepCollectionEquality().hash(diameter),const DeepCollectionEquality().hash(length),const DeepCollectionEquality().hash(fillHeight),const DeepCollectionEquality().hash(norminalThickness),stressLookupTableId,bmCode,bmYear,bmSpec,bmGrade,weldJointEffyId,isInsulated,insulationTypeId,pipingCircuitLength,isPWHT,courseNumber,isEntryPossibleId,corrosiveProduct,internalCorrosionTypeId,internalCorrosionTypeShellSideId,isPredictableIntCorrLocation,isPredictableIntCorrLocationShellSide,estimatedInternalCorrosionRate,estimatedExternalCorrosionRate,const DeepCollectionEquality().hash(measuredExternalCorrosionRate),sourceOfCalculatedCorrosionRateId,lastKnownInspectionDate,onlineMonitoringFlagId,keyProcessVariableId,electricalResistanceProbeId,corrosionCouponsId,linerInstallationDate,linerConditionId,immersionGradeCoatingQualityId,isDeleted,componentRefData]);

@override
String toString() {
  return 'ComponentModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, equipmentComponentId: $equipmentComponentId, componentID: $componentID, name: $name, componentRefDataId: $componentRefDataId, equipmentId: $equipmentId, familyId: $familyId, dateInService: $dateInService, operatingPressure: $operatingPressure, operatingPressureShell: $operatingPressureShell, operatingTemperature: $operatingTemperature, areaHumidityId: $areaHumidityId, foundationTypeId: $foundationTypeId, initialFluidPhaseId: $initialFluidPhaseId, isToxicMixture: $isToxicMixture, percentToxic: $percentToxic, inventory: $inventory, detectionTime: $detectionTime, isolationTime: $isolationTime, designPressure: $designPressure, designPressureShellSide: $designPressureShellSide, designTemperature: $designTemperature, designTemperatureShellSide: $designTemperatureShellSide, diameter: $diameter, length: $length, fillHeight: $fillHeight, norminalThickness: $norminalThickness, stressLookupTableId: $stressLookupTableId, bmCode: $bmCode, bmYear: $bmYear, bmSpec: $bmSpec, bmGrade: $bmGrade, weldJointEffyId: $weldJointEffyId, isInsulated: $isInsulated, insulationTypeId: $insulationTypeId, pipingCircuitLength: $pipingCircuitLength, isPWHT: $isPWHT, courseNumber: $courseNumber, isEntryPossibleId: $isEntryPossibleId, corrosiveProduct: $corrosiveProduct, internalCorrosionTypeId: $internalCorrosionTypeId, internalCorrosionTypeShellSideId: $internalCorrosionTypeShellSideId, isPredictableIntCorrLocation: $isPredictableIntCorrLocation, isPredictableIntCorrLocationShellSide: $isPredictableIntCorrLocationShellSide, estimatedInternalCorrosionRate: $estimatedInternalCorrosionRate, estimatedExternalCorrosionRate: $estimatedExternalCorrosionRate, measuredExternalCorrosionRate: $measuredExternalCorrosionRate, sourceOfCalculatedCorrosionRateId: $sourceOfCalculatedCorrosionRateId, lastKnownInspectionDate: $lastKnownInspectionDate, onlineMonitoringFlagId: $onlineMonitoringFlagId, keyProcessVariableId: $keyProcessVariableId, electricalResistanceProbeId: $electricalResistanceProbeId, corrosionCouponsId: $corrosionCouponsId, linerInstallationDate: $linerInstallationDate, linerConditionId: $linerConditionId, immersionGradeCoatingQualityId: $immersionGradeCoatingQualityId, isDeleted: $isDeleted, componentRefData: $componentRefData)';
}


}

/// @nodoc
abstract mixin class _$ComponentModelCopyWith<$Res> implements $ComponentModelCopyWith<$Res> {
  factory _$ComponentModelCopyWith(_ComponentModel value, $Res Function(_ComponentModel) _then) = __$ComponentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String createdAt, String updatedAt, String equipmentComponentId, String componentID, String name, String componentRefDataId, String equipmentId, String familyId, String dateInService, int operatingPressure, int operatingPressureShell, int operatingTemperature, String areaHumidityId, String? foundationTypeId, String initialFluidPhaseId, bool isToxicMixture, int? percentToxic, dynamic inventory, int detectionTime, int isolationTime, dynamic designPressure, dynamic designPressureShellSide, dynamic designTemperature, dynamic designTemperatureShellSide, dynamic diameter, dynamic length, dynamic fillHeight, dynamic norminalThickness, String? stressLookupTableId, String? bmCode, String? bmYear, String? bmSpec, String? bmGrade, String? weldJointEffyId, bool isInsulated, String? insulationTypeId, int pipingCircuitLength, bool isPWHT, int? courseNumber, String isEntryPossibleId, String? corrosiveProduct, String internalCorrosionTypeId, String internalCorrosionTypeShellSideId, bool isPredictableIntCorrLocation, bool isPredictableIntCorrLocationShellSide, int estimatedInternalCorrosionRate, int estimatedExternalCorrosionRate, dynamic measuredExternalCorrosionRate, String? sourceOfCalculatedCorrosionRateId, String lastKnownInspectionDate, String onlineMonitoringFlagId, String keyProcessVariableId, String electricalResistanceProbeId, String corrosionCouponsId, String linerInstallationDate, String linerConditionId, String immersionGradeCoatingQualityId, bool isDeleted, ComponentRefDataModel? componentRefData
});


@override $ComponentRefDataModelCopyWith<$Res>? get componentRefData;

}
/// @nodoc
class __$ComponentModelCopyWithImpl<$Res>
    implements _$ComponentModelCopyWith<$Res> {
  __$ComponentModelCopyWithImpl(this._self, this._then);

  final _ComponentModel _self;
  final $Res Function(_ComponentModel) _then;

/// Create a copy of ComponentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? equipmentComponentId = null,Object? componentID = null,Object? name = null,Object? componentRefDataId = null,Object? equipmentId = null,Object? familyId = null,Object? dateInService = null,Object? operatingPressure = null,Object? operatingPressureShell = null,Object? operatingTemperature = null,Object? areaHumidityId = null,Object? foundationTypeId = freezed,Object? initialFluidPhaseId = null,Object? isToxicMixture = null,Object? percentToxic = freezed,Object? inventory = freezed,Object? detectionTime = null,Object? isolationTime = null,Object? designPressure = freezed,Object? designPressureShellSide = freezed,Object? designTemperature = freezed,Object? designTemperatureShellSide = freezed,Object? diameter = freezed,Object? length = freezed,Object? fillHeight = freezed,Object? norminalThickness = freezed,Object? stressLookupTableId = freezed,Object? bmCode = freezed,Object? bmYear = freezed,Object? bmSpec = freezed,Object? bmGrade = freezed,Object? weldJointEffyId = freezed,Object? isInsulated = null,Object? insulationTypeId = freezed,Object? pipingCircuitLength = null,Object? isPWHT = null,Object? courseNumber = freezed,Object? isEntryPossibleId = null,Object? corrosiveProduct = freezed,Object? internalCorrosionTypeId = null,Object? internalCorrosionTypeShellSideId = null,Object? isPredictableIntCorrLocation = null,Object? isPredictableIntCorrLocationShellSide = null,Object? estimatedInternalCorrosionRate = null,Object? estimatedExternalCorrosionRate = null,Object? measuredExternalCorrosionRate = freezed,Object? sourceOfCalculatedCorrosionRateId = freezed,Object? lastKnownInspectionDate = null,Object? onlineMonitoringFlagId = null,Object? keyProcessVariableId = null,Object? electricalResistanceProbeId = null,Object? corrosionCouponsId = null,Object? linerInstallationDate = null,Object? linerConditionId = null,Object? immersionGradeCoatingQualityId = null,Object? isDeleted = null,Object? componentRefData = freezed,}) {
  return _then(_ComponentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,equipmentComponentId: null == equipmentComponentId ? _self.equipmentComponentId : equipmentComponentId // ignore: cast_nullable_to_non_nullable
as String,componentID: null == componentID ? _self.componentID : componentID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,componentRefDataId: null == componentRefDataId ? _self.componentRefDataId : componentRefDataId // ignore: cast_nullable_to_non_nullable
as String,equipmentId: null == equipmentId ? _self.equipmentId : equipmentId // ignore: cast_nullable_to_non_nullable
as String,familyId: null == familyId ? _self.familyId : familyId // ignore: cast_nullable_to_non_nullable
as String,dateInService: null == dateInService ? _self.dateInService : dateInService // ignore: cast_nullable_to_non_nullable
as String,operatingPressure: null == operatingPressure ? _self.operatingPressure : operatingPressure // ignore: cast_nullable_to_non_nullable
as int,operatingPressureShell: null == operatingPressureShell ? _self.operatingPressureShell : operatingPressureShell // ignore: cast_nullable_to_non_nullable
as int,operatingTemperature: null == operatingTemperature ? _self.operatingTemperature : operatingTemperature // ignore: cast_nullable_to_non_nullable
as int,areaHumidityId: null == areaHumidityId ? _self.areaHumidityId : areaHumidityId // ignore: cast_nullable_to_non_nullable
as String,foundationTypeId: freezed == foundationTypeId ? _self.foundationTypeId : foundationTypeId // ignore: cast_nullable_to_non_nullable
as String?,initialFluidPhaseId: null == initialFluidPhaseId ? _self.initialFluidPhaseId : initialFluidPhaseId // ignore: cast_nullable_to_non_nullable
as String,isToxicMixture: null == isToxicMixture ? _self.isToxicMixture : isToxicMixture // ignore: cast_nullable_to_non_nullable
as bool,percentToxic: freezed == percentToxic ? _self.percentToxic : percentToxic // ignore: cast_nullable_to_non_nullable
as int?,inventory: freezed == inventory ? _self.inventory : inventory // ignore: cast_nullable_to_non_nullable
as dynamic,detectionTime: null == detectionTime ? _self.detectionTime : detectionTime // ignore: cast_nullable_to_non_nullable
as int,isolationTime: null == isolationTime ? _self.isolationTime : isolationTime // ignore: cast_nullable_to_non_nullable
as int,designPressure: freezed == designPressure ? _self.designPressure : designPressure // ignore: cast_nullable_to_non_nullable
as dynamic,designPressureShellSide: freezed == designPressureShellSide ? _self.designPressureShellSide : designPressureShellSide // ignore: cast_nullable_to_non_nullable
as dynamic,designTemperature: freezed == designTemperature ? _self.designTemperature : designTemperature // ignore: cast_nullable_to_non_nullable
as dynamic,designTemperatureShellSide: freezed == designTemperatureShellSide ? _self.designTemperatureShellSide : designTemperatureShellSide // ignore: cast_nullable_to_non_nullable
as dynamic,diameter: freezed == diameter ? _self.diameter : diameter // ignore: cast_nullable_to_non_nullable
as dynamic,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as dynamic,fillHeight: freezed == fillHeight ? _self.fillHeight : fillHeight // ignore: cast_nullable_to_non_nullable
as dynamic,norminalThickness: freezed == norminalThickness ? _self.norminalThickness : norminalThickness // ignore: cast_nullable_to_non_nullable
as dynamic,stressLookupTableId: freezed == stressLookupTableId ? _self.stressLookupTableId : stressLookupTableId // ignore: cast_nullable_to_non_nullable
as String?,bmCode: freezed == bmCode ? _self.bmCode : bmCode // ignore: cast_nullable_to_non_nullable
as String?,bmYear: freezed == bmYear ? _self.bmYear : bmYear // ignore: cast_nullable_to_non_nullable
as String?,bmSpec: freezed == bmSpec ? _self.bmSpec : bmSpec // ignore: cast_nullable_to_non_nullable
as String?,bmGrade: freezed == bmGrade ? _self.bmGrade : bmGrade // ignore: cast_nullable_to_non_nullable
as String?,weldJointEffyId: freezed == weldJointEffyId ? _self.weldJointEffyId : weldJointEffyId // ignore: cast_nullable_to_non_nullable
as String?,isInsulated: null == isInsulated ? _self.isInsulated : isInsulated // ignore: cast_nullable_to_non_nullable
as bool,insulationTypeId: freezed == insulationTypeId ? _self.insulationTypeId : insulationTypeId // ignore: cast_nullable_to_non_nullable
as String?,pipingCircuitLength: null == pipingCircuitLength ? _self.pipingCircuitLength : pipingCircuitLength // ignore: cast_nullable_to_non_nullable
as int,isPWHT: null == isPWHT ? _self.isPWHT : isPWHT // ignore: cast_nullable_to_non_nullable
as bool,courseNumber: freezed == courseNumber ? _self.courseNumber : courseNumber // ignore: cast_nullable_to_non_nullable
as int?,isEntryPossibleId: null == isEntryPossibleId ? _self.isEntryPossibleId : isEntryPossibleId // ignore: cast_nullable_to_non_nullable
as String,corrosiveProduct: freezed == corrosiveProduct ? _self.corrosiveProduct : corrosiveProduct // ignore: cast_nullable_to_non_nullable
as String?,internalCorrosionTypeId: null == internalCorrosionTypeId ? _self.internalCorrosionTypeId : internalCorrosionTypeId // ignore: cast_nullable_to_non_nullable
as String,internalCorrosionTypeShellSideId: null == internalCorrosionTypeShellSideId ? _self.internalCorrosionTypeShellSideId : internalCorrosionTypeShellSideId // ignore: cast_nullable_to_non_nullable
as String,isPredictableIntCorrLocation: null == isPredictableIntCorrLocation ? _self.isPredictableIntCorrLocation : isPredictableIntCorrLocation // ignore: cast_nullable_to_non_nullable
as bool,isPredictableIntCorrLocationShellSide: null == isPredictableIntCorrLocationShellSide ? _self.isPredictableIntCorrLocationShellSide : isPredictableIntCorrLocationShellSide // ignore: cast_nullable_to_non_nullable
as bool,estimatedInternalCorrosionRate: null == estimatedInternalCorrosionRate ? _self.estimatedInternalCorrosionRate : estimatedInternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as int,estimatedExternalCorrosionRate: null == estimatedExternalCorrosionRate ? _self.estimatedExternalCorrosionRate : estimatedExternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as int,measuredExternalCorrosionRate: freezed == measuredExternalCorrosionRate ? _self.measuredExternalCorrosionRate : measuredExternalCorrosionRate // ignore: cast_nullable_to_non_nullable
as dynamic,sourceOfCalculatedCorrosionRateId: freezed == sourceOfCalculatedCorrosionRateId ? _self.sourceOfCalculatedCorrosionRateId : sourceOfCalculatedCorrosionRateId // ignore: cast_nullable_to_non_nullable
as String?,lastKnownInspectionDate: null == lastKnownInspectionDate ? _self.lastKnownInspectionDate : lastKnownInspectionDate // ignore: cast_nullable_to_non_nullable
as String,onlineMonitoringFlagId: null == onlineMonitoringFlagId ? _self.onlineMonitoringFlagId : onlineMonitoringFlagId // ignore: cast_nullable_to_non_nullable
as String,keyProcessVariableId: null == keyProcessVariableId ? _self.keyProcessVariableId : keyProcessVariableId // ignore: cast_nullable_to_non_nullable
as String,electricalResistanceProbeId: null == electricalResistanceProbeId ? _self.electricalResistanceProbeId : electricalResistanceProbeId // ignore: cast_nullable_to_non_nullable
as String,corrosionCouponsId: null == corrosionCouponsId ? _self.corrosionCouponsId : corrosionCouponsId // ignore: cast_nullable_to_non_nullable
as String,linerInstallationDate: null == linerInstallationDate ? _self.linerInstallationDate : linerInstallationDate // ignore: cast_nullable_to_non_nullable
as String,linerConditionId: null == linerConditionId ? _self.linerConditionId : linerConditionId // ignore: cast_nullable_to_non_nullable
as String,immersionGradeCoatingQualityId: null == immersionGradeCoatingQualityId ? _self.immersionGradeCoatingQualityId : immersionGradeCoatingQualityId // ignore: cast_nullable_to_non_nullable
as String,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,componentRefData: freezed == componentRefData ? _self.componentRefData : componentRefData // ignore: cast_nullable_to_non_nullable
as ComponentRefDataModel?,
  ));
}

/// Create a copy of ComponentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ComponentRefDataModelCopyWith<$Res>? get componentRefData {
    if (_self.componentRefData == null) {
    return null;
  }

  return $ComponentRefDataModelCopyWith<$Res>(_self.componentRefData!, (value) {
    return _then(_self.copyWith(componentRefData: value));
  });
}
}

// dart format on
