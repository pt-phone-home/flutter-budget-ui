import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () => print('Settings'),
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Simple Budget',
              ),
            ),

          )
        ],
      ),
    );
  }
}
