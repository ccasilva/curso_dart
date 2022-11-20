import 'package:dart_academia_flutter/3_dart_async/8_repositories/models/user.dart';
import 'package:http/http.dart';

class UserRepository {
  Future<User?> findAllUsers() async {
    var url = 'https://run.mocky.io/v3/b6b2e4ca-f66d-45f1-aac7-1aeb3f942f2c';
    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    }
  }
}
