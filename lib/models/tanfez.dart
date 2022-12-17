import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'tanfez.g.dart';

@HiveType(typeId: 0)
class HomeBuilding {
  @HiveField(0)
  String? operationCode;
  @HiveField(1)
  String? region;
  @HiveField(2)
  String? fiscalYear;
  @HiveField(3)
  String? comparisonValue;
  @HiveField(4)
  String? amountPaid;
  @HiveField(5)
  String? couponDate;
  @HiveField(6)
  String? operationName;
  @HiveField(7)
  String? operationPosition;
  @HiveField(8)
  String? notes;

  HomeBuilding(
      {@required this.operationCode,
      @required this.region,
      @required this.fiscalYear,
      @required this.comparisonValue,
      @required this.amountPaid,
      @required this.couponDate,
      @required this.operationName,
      @required this.operationPosition,
      @required this.notes});
}

@HiveType(typeId: 1)
class Governmental {
  @HiveField(0)
  String? operationCode;
  @HiveField(1)
  String? region;
  @HiveField(2)
  String? fiscalYear;
  @HiveField(3)
  String? thePartyFromWhichTheCheckSasIssued;
  @HiveField(4)
  String? voucherNumber;
  @HiveField(5)
  String? theValueOfTheCheckCouponOrderPayment;
  @HiveField(6)
  DateTime? theDateOfTheCheck;
  @HiveField(7)
  String? outgoingNumber;
  @HiveField(8)
  DateTime? issuedDate;
  @HiveField(9)
  String? operationName;
  @HiveField(10)
  String? notes;
  Governmental(
      {@required this.operationCode,
      @required this.region,
      @required this.fiscalYear,
      @required this.thePartyFromWhichTheCheckSasIssued,
      @required this.voucherNumber,
      @required this.theValueOfTheCheckCouponOrderPayment,
      required this.theDateOfTheCheck,
      @required this.outgoingNumber,
      required this.issuedDate,
      @required this.operationName,
      @required this.notes});
}

@HiveType(typeId: 2)
class Streets {
  @HiveField(0)
  String? operationCode;
  @HiveField(1)
  String? region;
  @HiveField(2)
  String? fiscalYear;
  @HiveField(3)
  String? comparisonValue;
  @HiveField(4)
  String? assayNumber;
  @HiveField(5)
  String? theValueOfTheAmountOfSupervisionAndTax;
  @HiveField(6)
  String? couponDate;
  @HiveField(7)
  String? outgoingNumber;
  @HiveField(8)
  String? issuedDate;
  @HiveField(9)
  String? operationName;
  @HiveField(10)
  String? exemptionRate;
  @HiveField(11)
  String? notes;
  @HiveField(12)
  String? supervisionDevice;
  @HiveField(13)
  String? oversightValue;
  @HiveField(14)
  String? taxValue;

  Streets({
    @required this.operationCode,
    @required this.region,
    @required this.fiscalYear,
    @required this.comparisonValue,
    @required this.assayNumber,
    @required this.theValueOfTheAmountOfSupervisionAndTax,
    @required this.couponDate,
    @required this.outgoingNumber,
    @required this.issuedDate,
    @required this.operationName,
    @required this.exemptionRate,
    @required this.notes,
    @required this.supervisionDevice,
    @required this.oversightValue,
    @required this.taxValue,
  });
}

@HiveType(typeId: 3)
class ImportBuild {
  @HiveField(0)
  String? statement;
  @HiveField(1)
  String? region;
  @HiveField(2)
  String? importNumber;
  @HiveField(3)
  String? theDateOfTheImport;
  @HiveField(4)
  String? theStatus;
  @HiveField(5)
  String? paymentIsMade;
  @HiveField(6)
  String? outgoingNumber;
  @HiveField(7)
  String? outgoingDate;
  ImportBuild({
    @required this.statement,
    @required this.region,
    @required this.importNumber,
    @required this.theDateOfTheImport,
    @required this.theStatus,
    @required this.paymentIsMade,
    @required this.outgoingNumber,
    @required this.outgoingDate,
  });
}
