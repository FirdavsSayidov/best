import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id = "HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _press = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
        body: SafeArea(child:Container(
          child: Center(
            child: Text('kdmcks'),
          ),
        ),

        ),
    floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.of(context).pushNamed(AsadBek.id);
    },
    ),
    );
  }
}

class AsadBek extends StatefulWidget {
   static const  String id='kjzs';
  const AsadBek({Key? key}) : super(key: key);

  @override
  State<AsadBek> createState() => _AsadBekState();
}

class _AsadBekState extends State<AsadBek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('dsnkk'),
      ),
    );
  }
}

