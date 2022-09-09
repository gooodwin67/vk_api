import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vk_api/api/api_client.dart';
import 'package:vk_api/widgets/main_screen/main_screen_provider.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context
        .read<MainScreenProvider>()
        .getUserInfo(context.read<ApiClient>().token);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Text('${context.watch<MainScreenProvider>().userName}'),
      ),
    );
  }
}
