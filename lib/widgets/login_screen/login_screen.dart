import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vk_api/api/api_client.dart';
import 'package:vk_api/widgets/main_screen/main_screen_provider.dart';

class LoginScreenWidget extends StatelessWidget {
  const LoginScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void getData() async {
      Navigator.pushNamed(context, '/main-screen');
      await context.read<ApiClient>().login();
      context
          .read<MainScreenProvider>()
          .getUserInfo(context.read<ApiClient>().token);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Login'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => getData(),
            child: Text('Login'),
          ),
        ),
      ),
    );
  }
}
