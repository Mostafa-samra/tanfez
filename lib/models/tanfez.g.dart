// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tanfez.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HomeBuildingAdapter extends TypeAdapter<HomeBuilding> {
  @override
  final int typeId = 0;

  @override
  HomeBuilding read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HomeBuilding(
      operationCode: fields[0] as String?,
      region: fields[1] as String?,
      fiscalYear: fields[2] as String?,
      comparisonValue: fields[3] as String?,
      amountPaid: fields[4] as String?,
      couponDate: fields[5] as String?,
      operationName: fields[6] as String?,
      operationPosition: fields[7] as String?,
      notes: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HomeBuilding obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.operationCode)
      ..writeByte(1)
      ..write(obj.region)
      ..writeByte(2)
      ..write(obj.fiscalYear)
      ..writeByte(3)
      ..write(obj.comparisonValue)
      ..writeByte(4)
      ..write(obj.amountPaid)
      ..writeByte(5)
      ..write(obj.couponDate)
      ..writeByte(6)
      ..write(obj.operationName)
      ..writeByte(7)
      ..write(obj.operationPosition)
      ..writeByte(8)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeBuildingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GovernmentalAdapter extends TypeAdapter<Governmental> {
  @override
  final int typeId = 1;

  @override
  Governmental read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Governmental(
      operationCode: fields[0] as String?,
      region: fields[1] as String?,
      fiscalYear: fields[2] as String?,
      thePartyFromWhichTheCheckSasIssued: fields[3] as String?,
      voucherNumber: fields[4] as String?,
      theValueOfTheCheckCouponOrderPayment: fields[5] as String?,
      theDateOfTheCheck: fields[6] as DateTime?,
      outgoingNumber: fields[7] as String?,
      issuedDate: fields[8] as DateTime?,
      operationName: fields[9] as String?,
      notes: fields[10] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Governmental obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.operationCode)
      ..writeByte(1)
      ..write(obj.region)
      ..writeByte(2)
      ..write(obj.fiscalYear)
      ..writeByte(3)
      ..write(obj.thePartyFromWhichTheCheckSasIssued)
      ..writeByte(4)
      ..write(obj.voucherNumber)
      ..writeByte(5)
      ..write(obj.theValueOfTheCheckCouponOrderPayment)
      ..writeByte(6)
      ..write(obj.theDateOfTheCheck)
      ..writeByte(7)
      ..write(obj.outgoingNumber)
      ..writeByte(8)
      ..write(obj.issuedDate)
      ..writeByte(9)
      ..write(obj.operationName)
      ..writeByte(10)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GovernmentalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StreetsAdapter extends TypeAdapter<Streets> {
  @override
  final int typeId = 2;

  @override
  Streets read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Streets(
      operationCode: fields[0] as String?,
      region: fields[1] as String?,
      fiscalYear: fields[2] as String?,
      comparisonValue: fields[3] as String?,
      assayNumber: fields[4] as String?,
      theValueOfTheAmountOfSupervisionAndTax: fields[5] as String?,
      couponDate: fields[6] as String?,
      outgoingNumber: fields[7] as String?,
      issuedDate: fields[8] as String?,
      operationName: fields[9] as String?,
      exemptionRate: fields[10] as String?,
      notes: fields[11] as String?,
      supervisionDevice: fields[12] as String?,
      oversightValue: fields[13] as String?,
      taxValue: fields[14] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Streets obj) {
    writer
      ..writeByte(15)
      ..writeByte(0)
      ..write(obj.operationCode)
      ..writeByte(1)
      ..write(obj.region)
      ..writeByte(2)
      ..write(obj.fiscalYear)
      ..writeByte(3)
      ..write(obj.comparisonValue)
      ..writeByte(4)
      ..write(obj.assayNumber)
      ..writeByte(5)
      ..write(obj.theValueOfTheAmountOfSupervisionAndTax)
      ..writeByte(6)
      ..write(obj.couponDate)
      ..writeByte(7)
      ..write(obj.outgoingNumber)
      ..writeByte(8)
      ..write(obj.issuedDate)
      ..writeByte(9)
      ..write(obj.operationName)
      ..writeByte(10)
      ..write(obj.exemptionRate)
      ..writeByte(11)
      ..write(obj.notes)
      ..writeByte(12)
      ..write(obj.supervisionDevice)
      ..writeByte(13)
      ..write(obj.oversightValue)
      ..writeByte(14)
      ..write(obj.taxValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StreetsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ImportBuildAdapter extends TypeAdapter<ImportBuild> {
  @override
  final int typeId = 3;

  @override
  ImportBuild read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ImportBuild(
      statement: fields[0] as String?,
      region: fields[1] as String?,
      importNumber: fields[2] as String?,
      theDateOfTheImport: fields[3] as String?,
      theStatus: fields[4] as String?,
      paymentIsMade: fields[5] as String?,
      outgoingNumber: fields[6] as String?,
      outgoingDate: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ImportBuild obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.statement)
      ..writeByte(1)
      ..write(obj.region)
      ..writeByte(2)
      ..write(obj.importNumber)
      ..writeByte(3)
      ..write(obj.theDateOfTheImport)
      ..writeByte(4)
      ..write(obj.theStatus)
      ..writeByte(5)
      ..write(obj.paymentIsMade)
      ..writeByte(6)
      ..write(obj.outgoingNumber)
      ..writeByte(7)
      ..write(obj.outgoingDate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImportBuildAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
