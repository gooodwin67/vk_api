import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vk_api/api/api_client.dart';
import 'package:vk_api/widgets/friends_screen/friends_screen.dart';
import 'package:vk_api/widgets/login_screen/login_screen.dart';
import 'package:vk_api/widgets/main_screen/main_screen.dart';
import 'package:vk_api/widgets/main_screen/main_screen_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ApiClient(),
      ),
      ChangeNotifierProvider(
        create: (_) => MainScreenProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreenWidget(),
        '/main-screen': (context) => MainScreenWidget(),
        '/main-screen/friends-screen': (context) => FriendsScreenWidget(),
      },
    );
  }
}
