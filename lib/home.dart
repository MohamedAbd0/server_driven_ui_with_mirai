import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget? body;
  @override
  void initState() {
    super.initState();
    getWidget();
  }

  getWidget() async {
    await Mirai.fromAssets("assets/screen.json", context).then((value) {
      setState(() {
        body = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: body ?? const CircularProgressIndicator(),
    );
  }
}
