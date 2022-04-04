// To parse this JSON data, do
//
//     final completedTransaction = completedTransactionFromMap(jsonString);

import 'dart:convert';

class CompletedTransaction {
  CompletedTransaction({
    this.id,
    this.consumerId,
    this.deviceId,
    this.sessionId,
    this.fromDateTime,
    this.toDateTime,
    this.kwhConsumed,
    this.averageKwLoading,
    this.kmsAdded,
    this.co2Emitted,
    this.treesPlanted,
    this.moneySpent,
    this.rewardsEarned,
    this.kwhOffpeak,
    this.kwhMidpeak,
    this.kwhPeak,
    this.kmsOffpeak,
    this.kmsMidpeak,
    this.kmsPeak,
    this.co2EmittedOffpeak,
    this.co2EmittedMidpeak,
    this.co2EmittedPeak,
    this.treesplantedMidpeak,
    this.treesplantedPeak,
    this.tariffType,
    this.moneyspentOffpeak,
    this.moneyspentMidpeak,
    this.moneyspentPeak,
    this.meterStartReading,
    this.meterStopReading,
    this.totalChargingTime,
    this.durationOffpeak,
    this.durationMidpeak,
    this.durationPeak,
    this.totalScSaving,
    this.scsavingOffpeak,
    this.scsavingMidpeak,
    this.scsavingPeak,
  });

  String? id;
  String? consumerId;
  String? deviceId;
  String? sessionId;
  String? fromDateTime;
  String? toDateTime;
  dynamic? kwhConsumed;
  double? averageKwLoading;
  dynamic kmsAdded;
  dynamic co2Emitted;
  dynamic treesPlanted;
  double? moneySpent;
  dynamic rewardsEarned;
  double? kwhOffpeak;
  dynamic kwhMidpeak;
  double? kwhPeak;
  double? kmsOffpeak;
  double? kmsMidpeak;
  double? kmsPeak;
  double? co2EmittedOffpeak;
  double? co2EmittedMidpeak;
  double? co2EmittedPeak;
  dynamic treesplantedMidpeak;
  dynamic treesplantedPeak;
  double? moneyspentOffpeak;
  dynamic moneyspentMidpeak;
  double? moneyspentPeak;
  dynamic meterStopReading;
  String? totalChargingTime;
  String? tariffType;
  String? durationOffpeak;
  String? durationMidpeak;
  String? durationPeak;
  dynamic totalScSaving;
  dynamic meterStartReading;
  dynamic scsavingOffpeak;
  dynamic scsavingMidpeak;
  dynamic scsavingPeak;

 factory CompletedTransaction.fromJson(Map<String, dynamic> json) => CompletedTransaction(
        id: json["id"] ?? "",
        consumerId: json["consumer_id"] ?? "",
        deviceId: json["device_id"] ?? "",
        sessionId: json["session_id"] ?? "",
        fromDateTime: json["from_date_time"] ?? "",
        toDateTime: json["to_date_time"] ?? "",
        kwhConsumed: json["kwh_consumed"] ?? 0,
        averageKwLoading: json["average_kw_loading"] ?? 0,
        kmsAdded: json["kms_added"] ?? 0,
        co2Emitted: json["co2_emitted"] ?? 0,
        treesPlanted: json["trees_planted"] ?? 0,
        moneySpent: json["money_spent"] ?? 0.0,
        rewardsEarned: json["rewards_earned"] ?? 0,
        kwhOffpeak: json["kwh_offpeak"] ?? 0, 
        kwhMidpeak: json["kwh_midpeak"] ?? 0,
        kwhPeak: json["kwh_peak"] ?? 0,
        kmsOffpeak: json["kms_offpeak"] ?? 0,
        kmsMidpeak: json["kms_midpeak"] ?? 0,
        kmsPeak: json["kms_peak"] ?? 0,
        co2EmittedOffpeak: json["co2_emitted_offpeak"] ?? 0,
        co2EmittedMidpeak: json["co2_emitted_midpeak"] ?? 0,
        co2EmittedPeak: json["co2_emitted_peak"] ?? 0,
        treesplantedMidpeak: json["treesplanted_midpeak"] ?? 0,
        treesplantedPeak: json["treesplanted_peak"] ?? 0,
        tariffType: json["tariff_type"] ?? "",
        moneyspentOffpeak: json["moneyspent_offpeak"] ?? 0,
        moneyspentMidpeak: json["moneyspent_midpeak"] ?? 0,
        moneyspentPeak: json["moneyspent_peak"] ?? 0,
        meterStartReading: json["meter_start_reading"] ?? 0,
        meterStopReading: json["meter_stop_reading"] ?? 0,
        totalChargingTime: json["total_charging_time"] ?? 0,
        durationOffpeak: json["duration_offpeak"] ?? 0,
        durationMidpeak: json["duration_midpeak"] ?? 0,
        durationPeak: json["duration_peak"] ?? 0,
        totalScSaving: json["total_sc_saving"] ?? 0,
        scsavingOffpeak: json["scsaving_offpeak"] ?? 0,
        scsavingMidpeak: json["scsaving_midpeak"] ?? 0,
        scsavingPeak: json["scsaving_peak"] ?? 0,
      );

}
