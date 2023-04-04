import 'package:flutter/material.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  var user_name;

  Map userdata = {};

  @override
  Widget build(BuildContext context)
  {
    userdata = ModalRoute.of(context)!.settings.arguments as Map;

    print (userdata);

    setState(() {
    user_name = userdata['name'];
 });
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: Center(
        child: Text("$user_name",
          style: TextStyle(
          fontSize: 30.0,
        ),
        ),
      ),
    );
  }
}
