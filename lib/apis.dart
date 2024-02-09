import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:numberapi/numberfactresponse/numberfactresponse.dart';

Future<Numberfactresponse> getnumberfact({required var number}) async {
  final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  final bodyAsJson = jsonDecode(response.body)as Map<String,dynamic>;
  final data=Numberfactresponse.fromJson(bodyAsJson);
  return data;
}
