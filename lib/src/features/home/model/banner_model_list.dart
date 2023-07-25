import "package:bemboo/src/common_widgets/banner_item.dart";
import "dart:convert";
import "package:dio/dio.dart";

const String localJSON = "./banner_api.json";
final dio = Dio();

void fetchBanners() async {
  try {
    final response = await dio.get(localJSON);

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.data);

      List<BannerItem> users = jsonData.map((item) => User.fromJson(item)).toList();

      // Now you have a list of User objects from the local JSON data
      // Do whatever you want with the 'users' list
      for (var user in users) {
        print('User ID: ${user.id}, Name: ${user.name}, Age: ${user.age}');
      }
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
}

List<BannerItem> listOfItems = [
];
