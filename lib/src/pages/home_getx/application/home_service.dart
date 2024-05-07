import 'package:http/http.dart';

class HomeService{
  Future<Response> getHomeData() async{
    var url = Uri.parse(
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=09a63c9dc1ce42908522bc7c784a8a43");

    Response response = await get(url);

    return response;
  }
}