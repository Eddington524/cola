import 'dart:convert';

import 'package:cola/model/trend.dart';
import 'package:http/http.dart';
import 'dart:io';

class TrendRepo {
  String URL = Platform.isAndroid ? 'http://10.0.2.2:3000' : 'http://localhost:3000';

  Future<List<Trend>> loadData() async {
    Client client = Client();
    Uri url = Uri.parse('$URL/trendlist');

    var response = await client.get(url);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(utf8.decode(response.bodyBytes));
      List<Trend> list = body.map((e) => Trend.fromJson(e)).toList();
      return list;
    }else{
      return [];
    }
  }
}