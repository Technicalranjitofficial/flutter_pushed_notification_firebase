import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    runInit();
  }

  runInit() async {
    // const argument = ModelRoute
  }
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    print(arguments);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Push Notification"),
      ),
      body: const Center(
        child: Text("Hello World"),
      ),
    );
  }
}
