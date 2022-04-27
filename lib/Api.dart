import 'dart:convert';

import 'package:http/http.dart' as http;
class Api{
static Future  getBloodGroups()async{
  String url="https://blood2donation.000webhostapp.com/getGroups.php";
  var response=await http.get(Uri.parse(url));

return jsonDecode(response.body);
}
}