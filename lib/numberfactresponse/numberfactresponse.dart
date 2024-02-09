import 'package:json_annotation/json_annotation.dart';

part 'numberfactresponse.g.dart';

@JsonSerializable()
class Numberfactresponse {

  @JsonKey(name: "text")
  String? text;

  @JsonKey(name: "number")
  num? number;

  @JsonKey(name: "found")
  bool? found;

  @JsonKey(name: "type")
  String? type;

  Numberfactresponse({this.text, this.number, this.found, this.type});

  factory Numberfactresponse.fromJson(Map<String, dynamic> json) {
    return _$NumberfactresponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberfactresponseToJson(this);
}
