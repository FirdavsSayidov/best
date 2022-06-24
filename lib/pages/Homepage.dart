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
    body: Container(
      padding: EdgeInsets.all(10),
      
      child: Column(
        children: [
         SizedBox(height: 5,),
          /*Container(height: 45,decoration: BoxDecoration( borderRadius: BorderRadius.circular(22.5),
              color: Colors.white
          ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Phone",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.phone_iphone,color: Colors.grey,)
              ),
            ),
          )*/
          Container( height: 45, decoration:BoxDecoration(
            borderRadius: BorderRadius.circular(22.5),color: Colors.white
          ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Phone',
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
                  , prefixIcon: Icon(Icons.phone_iphone)

              ),
            ),

          )
        ],
      ),

    ),

        );

  }

}







