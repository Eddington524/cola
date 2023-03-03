import 'package:flutter_test/flutter_test.dart';

void main() {
  test("uri_parse_test", () {
    int id = 1;
    String tag = "tagtest1235";
    Map<String, String> queryParameters = {"tag": tag};
    Uri URL = Uri.http("localhost:3000", "/itemlist/$id", queryParameters);
    print(URL.toString());
  });
}
