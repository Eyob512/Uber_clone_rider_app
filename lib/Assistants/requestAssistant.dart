import 'dart:convert';
import 'package:http/http.dart' as http;

class RequestAssistant {
  static Future<dynamic> getRequest(String url) async {
    Uri requestUri = new Uri();
    requestUri.resolve(url);
    http.Response response = await http.get(requestUri);
    try{
      if(response.statusCode == 200){
        String JsonData = response.body;
        var decodeData = jsonDecode(JsonData);
        return decodeData;
      }
      else {
        return "failed";
      }
    }
    catch (exp){
      return "failed";
    }
  }
}