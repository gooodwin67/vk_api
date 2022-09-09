import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

class MainScreenProvider with ChangeNotifier {
  String? _userName = '1';
  String? get userName => _userName;

  Future getUserInfo(token) async {
    var userInfo = await http.get(Uri.parse(
        'https://api.vk.com/method/users.get?v=5.131&access_token=${token}'));
    _userName = userInfo.toString();
    var userNameMap = jsonDecode(userInfo.body);
    print(userNameMap);
    notifyListeners();
  }
}
