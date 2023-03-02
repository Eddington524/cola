import 'dart:convert';

import 'package:cola/model/event.dart';
import 'package:http/http.dart';
import 'dart:io';

class EventRepo {
  String URL = Platform.isAndroid ? 'http://10.0.2.2:3000' : 'http://localhost:3000';

  Future<List<Event>> loadData(idx) async {
    List<Event> eventInstance = [];
    Client client = Client();
    Uri url = Uri.parse('$URL/bannerlist/$idx');

    var response = await client.get(url);

    if(response.statusCode == 200) {
      dynamic body = jsonDecode(response.body);
      eventInstance.add(Event.fromJson(body));

      return eventInstance;
    }
    else{
      throw HttpException('Failed to load event: ${response.statusCode}');
    }
  }
}