import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vk_api/api/api_client.dart';

class LoginScreenWidget extends StatelessWidget {
  const LoginScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Login'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () => {
              context.read<ApiClient>().login(),
              Navigator.pushNamed(context, '/main-screen')
            },
            child: Text('Login'),
          ),
        ),
      ),
    );
  }
}
