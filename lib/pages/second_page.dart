import 'package:flutter/material.dart';
import 'package:travel_app/model/user.dart';
import 'package:travel_app/servise/prefs_servise.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    User user = User("101", "email", "password");
    PrefsServise.storeUser(user);
    PrefsServise.loadUser()
        .then((value) => {print(value!.toJson().toString())});

    PrefsServise.removeUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
