import 'dart:convert';

import 'package:cola/model/play.dart';
import 'package:http/http.dart';

class PlayRepo {
  Future<List<Play>> loadData() async {
    Client client = Client();
    Uri url = Uri.parse('http://localhost:3000/playlist');

    var response = await client.get(url);

    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(utf8.decode(response.bodyBytes));
      List<Play> list = body.map((e) => Play.fromJson(e)).toList();
      return list;
      
    } else {
      return [];
    }
  }
}