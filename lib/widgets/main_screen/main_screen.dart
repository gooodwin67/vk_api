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
  /*@override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context
        .read<MainScreenProvider>()
        .getUserInfo(context.read<ApiClient>().token);
  }*/

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
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          color: Color.fromARGB(255, 34, 60, 177),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(),
              Icon(Icons.home, color: Colors.white),
              SizedBox(),
              InkWell(
                  onTap: () => Navigator.pushNamed(
                      context, '/main-screen/friends-screen'),
                  child: Icon(Icons.mail, color: Colors.white)),
              SizedBox(),
            ],
          ),
        ),
      ),
      body: Center(
        child: context.watch<MainScreenProvider>().mainScreen,
      ),
    );
  }
}
