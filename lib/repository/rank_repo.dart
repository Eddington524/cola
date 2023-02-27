import 'dart:convert';

import 'package:cola/model/rank.dart';
import 'package:http/http.dart';

import 'dart:io';

class RankRepo {
  String URL = Platform.isAndroid ? 'http://10.0.2.2:3000' : 'http://localhost:3000';

  Future<List<Rank>> loadData() async {
    Client client = Client();
    Uri url = Uri.parse('$URL/ranklist');

    var response = await client.get(url);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(utf8.decode(response.bodyBytes));
      List<Rank> list = body.map((e) => Rank.fromJson(e)).toList();
      return list;
    }else{
      return [];
    }
  }
}