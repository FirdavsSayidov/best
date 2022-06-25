import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class HomePage extends StatefulWidget {

  const HomePage({Key? key}) : super(key: key);
 static const String id ="HomePage";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _androidDilaog(){
   showDialog(context: context, builder: (BuildContext context){
     return AlertDialog(
       title: Text('Log out'),
       content: Image( height: 140,width: 140,
         image: AssetImage('assets/images/pubg.jpg'),
       ),

     );


   });
  }

  late PageController _pageController;
  int selectedPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.blueGrey,

      appBar: AppBar(
        title: Center(child: Text('Image')),
      ),

      body: Container(padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Container( height: 45, width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22.5),color: Colors.white
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Phone",
                  hintStyle: TextStyle(color:Colors.grey),
                  prefixIcon: Icon(Icons.phone),
                  border: InputBorder.none

                ),
              ),
            ),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,borderRadius: BorderRadius.circular(22.5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'Message',
                  prefixIcon: Icon(Icons.message),
                  border: InputBorder.none
                ),
              ),
            )
          ],
        ),
      ),

        );

  }

}







