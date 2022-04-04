// To parse this JSON data, do
//
//     final completedTransaction = completedTransactionFromMap(jsonString);

import 'dart:convert';

CompletedTransaction completedTransactionFromMap(String str) =>
    CompletedTransaction.fromMap(json.decode(str));

String completedTransactionToMap(CompletedTransaction data) =>
    json.encode(data.toMap());

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
  double? kwhConsumed;
  double? averageKwLoading;
  double? kmsAdded;
  double? co2Emitted;
  int? treesPlanted;
  double? moneySpent;
  int? rewardsEarned;
  double? kwhOffpeak;
  double? kwhMidpeak;
  double? kwhPeak;
  double? kmsOffpeak;
  double? kmsMidpeak;
  double? kmsPeak;
  double? co2EmittedOffpeak;
  double? co2EmittedMidpeak;
  double? co2EmittedPeak;
  int? treesplantedMidpeak;
  int? treesplantedPeak;
  double? moneyspentOffpeak;
  double? moneyspentMidpeak;
  double? moneyspentPeak;
  double? meterStopReading;
  String? totalChargingTime;
  String? tariffType;
  String? durationOffpeak;
  String? durationMidpeak;
  String? durationPeak;
  int? totalScSaving;
  int? meterStartReading;
  int? scsavingOffpeak;
  int? scsavingMidpeak;
  int? scsavingPeak;

  factory CompletedTransaction.fromMap(Map<String, dynamic> json) =>
      CompletedTransaction(
        id: json["id"] == null ? null : json["id"],
        consumerId: json["consumer_id"] == null ? null : json["consumer_id"],
        deviceId: json["device_id"] == null ? null : json["device_id"],
        sessionId: json["session_id"] == null ? null : json["session_id"],
        fromDateTime:
            json["from_date_time"] == null ? null : json["from_date_time"],
        toDateTime: json["to_date_time"] == null ? null : json["to_date_time"],
        kwhConsumed: json["kwh_consumed"] == null
            ? null
            : json["kwh_consumed"].toDouble(),
        averageKwLoading: json["average_kw_loading"] == null
            ? null
            : json["average_kw_loading"].toDouble(),
        kmsAdded:
            json["kms_added"] == null ? null : json["kms_added"].toDouble(),
        co2Emitted:
            json["co2_emitted"] == null ? null : json["co2_emitted"].toDouble(),
        treesPlanted:
            json["trees_planted"] == null ? null : json["trees_planted"],
        moneySpent:
            json["money_spent"] == null ? null : json["money_spent"].toDouble(),
        rewardsEarned:
            json["rewards_earned"] == null ? null : json["rewards_earned"],
        kwhOffpeak:
            json["kwh_offpeak"] == null ? null : json["kwh_offpeak"].toDouble(),
        kwhMidpeak:
            json["kwh_midpeak"] == null ? null : json["kwh_midpeak"].toDouble(),
        kwhPeak: json["kwh_peak"] == null ? null : json["kwh_peak"].toDouble(),
        kmsOffpeak:
            json["kms_offpeak"] == null ? null : json["kms_offpeak"].toDouble(),
        kmsMidpeak:
            json["kms_midpeak"] == null ? null : json["kms_midpeak"].toDouble(),
        kmsPeak: json["kms_peak"] == null ? null : json["kms_peak"].toDouble(),
        co2EmittedOffpeak: json["co2_emitted_offpeak"] == null
            ? null
            : json["co2_emitted_offpeak"].toDouble(),
        co2EmittedMidpeak: json["co2_emitted_midpeak"] == null
            ? null
            : json["co2_emitted_midpeak"].toDouble(),
        co2EmittedPeak: json["co2_emitted_peak"] == null
            ? null
            : json["co2_emitted_peak"].toDouble(),
        treesplantedMidpeak: json["treesplanted_midpeak"] == null
            ? null
            : json["treesplanted_midpeak"],
        treesplantedPeak: json["treesplanted_peak"] == null
            ? null
            : json["treesplanted_peak"],
        tariffType: json["tariff_type"] == null ? null : json["tariff_type"],
        moneyspentOffpeak: json["moneyspent_offpeak"] == null
            ? null
            : json["moneyspent_offpeak"].toDouble(),
        moneyspentMidpeak: json["moneyspent_midpeak"] == null
            ? null
            : json["moneyspent_midpeak"].toDouble(),
        moneyspentPeak: json["moneyspent_peak"] == null
            ? null
            : json["moneyspent_peak"].toDouble(),
        meterStartReading: json["meter_start_reading"] == null
            ? null
            : json["meter_start_reading"],
        meterStopReading: json["meter_stop_reading"] == null
            ? null
            : json["meter_stop_reading"].toDouble(),
        totalChargingTime: json["total_charging_time"] == null
            ? null
            : json["total_charging_time"],
        durationOffpeak:
            json["duration_offpeak"] == null ? null : json["duration_offpeak"],
        durationMidpeak:
            json["duration_midpeak"] == null ? null : json["duration_midpeak"],
        durationPeak:
            json["duration_peak"] == null ? null : json["duration_peak"],
        totalScSaving:
            json["total_sc_saving"] == null ? null : json["total_sc_saving"],
        scsavingOffpeak:
            json["scsaving_offpeak"] == null ? null : json["scsaving_offpeak"],
        scsavingMidpeak:
            json["scsaving_midpeak"] == null ? null : json["scsaving_midpeak"],
        scsavingPeak:
            json["scsaving_peak"] == null ? null : json["scsaving_peak"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "consumer_id": consumerId == null ? null : consumerId,
        "device_id": deviceId == null ? null : deviceId,
        "session_id": sessionId == null ? null : sessionId,
        "from_date_time": fromDateTime == null ? null : fromDateTime,
        "to_date_time": toDateTime == null ? null : toDateTime,
        "kwh_consumed": kwhConsumed == null ? null : kwhConsumed,
        "average_kw_loading":
            averageKwLoading == null ? null : averageKwLoading,
        "kms_added": kmsAdded == null ? null : kmsAdded,
        "co2_emitted": co2Emitted == null ? null : co2Emitted,
        "trees_planted": treesPlanted == null ? null : treesPlanted,
        "money_spent": moneySpent == null ? null : moneySpent,
        "rewards_earned": rewardsEarned == null ? null : rewardsEarned,
        "kwh_offpeak": kwhOffpeak == null ? null : kwhOffpeak,
        "kwh_midpeak": kwhMidpeak == null ? null : kwhMidpeak,
        "kwh_peak": kwhPeak == null ? null : kwhPeak,
        "kms_offpeak": kmsOffpeak == null ? null : kmsOffpeak,
        "kms_midpeak": kmsMidpeak == null ? null : kmsMidpeak,
        "kms_peak": kmsPeak == null ? null : kmsPeak,
        "co2_emitted_offpeak":
            co2EmittedOffpeak == null ? null : co2EmittedOffpeak,
        "co2_emitted_midpeak":
            co2EmittedMidpeak == null ? null : co2EmittedMidpeak,
        "co2_emitted_peak": co2EmittedPeak == null ? null : co2EmittedPeak,
        "treesplanted_midpeak":
            treesplantedMidpeak == null ? null : treesplantedMidpeak,
        "treesplanted_peak": treesplantedPeak == null ? null : treesplantedPeak,
        "tariff_type": tariffType == null ? null : tariffType,
        "moneyspent_offpeak":
            moneyspentOffpeak == null ? null : moneyspentOffpeak,
        "moneyspent_midpeak":
            moneyspentMidpeak == null ? null : moneyspentMidpeak,
        "moneyspent_peak": moneyspentPeak == null ? null : moneyspentPeak,
        "meter_start_reading":
            meterStartReading == null ? null : meterStartReading,
        "meter_stop_reading":
            meterStopReading == null ? null : meterStopReading,
        "total_charging_time":
            totalChargingTime == null ? null : totalChargingTime,
        "duration_offpeak": durationOffpeak == null ? null : durationOffpeak,
        "duration_midpeak": durationMidpeak == null ? null : durationMidpeak,
        "duration_peak": durationPeak == null ? null : durationPeak,
        "total_sc_saving": totalScSaving == null ? null : totalScSaving,
        "scsaving_offpeak": scsavingOffpeak == null ? null : scsavingOffpeak,
        "scsaving_midpeak": scsavingMidpeak == null ? null : scsavingMidpeak,
        "scsaving_peak": scsavingPeak == null ? null : scsavingPeak,
      };
}
