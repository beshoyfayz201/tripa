import 'package:flutter/material.dart';
import 'package:untitled1/myanimation.dart';
import 'package:simple_animations/simple_animations.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  PageController pagecontoller;
  @override
  void initState() {
    pagecontoller = PageController(initialPage: 0)..addListener(onscroll);
    super.initState();
  }

  onscroll() {
    print(" ======");
  }
   @override
  void dispose() {
    pagecontoller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: PageView(
        controller: pagecontoller,
        children: <Widget>[
          makePage(page: 1,i:"assets/images/f4.jpg",title:"Dubai",descr: "one of the most greatist cities in the world  it got alot of places to visit such asone of the most greatist cities in the world  it got alot of places to visit such asone of the most greatist cities in the world "),
          makePage(page: 2,i:"assets/images/f6.PNG",title: "derAlbarsha",descr: "one of the most greatist cities in the world  it got alot of places to visit such asone of the most greatist cities in the world  it got alot of places to visit such asone of the most greatist cities in the world it got alot of places to visit such asone of the most greatist cities in the world "),
          makePage(page: 3,i:"assets/images/f3.jpg",title: "Alex",descr: "one of the most greatist cities in the world  it got alot of places to visit such asone of the most greatist cities in the world  it got alot of places to visit such asone of the most greatist cities in the world it got alot of places to visit such asone of the most greatist cities in the world"),
         makePage(page: 4,i:"assets/images/f1.jpg",title: "venna",descr: "one of the most greatist cities in the world  it got alot of places to visit such asone of the most greatist cities in the world  it got alot of places to visit such asone of the most greatist cities in the world it got alot of places to visit such asone of the most greatist cities in the world")
        ],
      ),
    );
  }

  Widget makePage({String i,String title,String descr,page}) {
    String total="5";
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(i), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.2)
                ],
                begin: Alignment.bottomRight,
                stops: [0.3, 0.9])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(page.toString(),style: TextStyle(fontSize: 24,  color: Colors.white,fontWeight: FontWeight.bold),),
                  Text("/$total",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                ],
              ),
              Expanded(child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                 
                 Outanima(1, Text(title,style: TextStyle(fontSize: 40,  color: Colors.white,fontWeight: FontWeight.bold),)),
              
                SizedBox(height: 10,),
                Outanima(1.5
                                  , Row(children: <Widget>[
                    Icon(Icons.star,color: Colors.yellow,size: 20,),
                    Icon(Icons.star,color: Colors.yellow,size: 20,),
                    Icon(Icons.star,color: Colors.yellow,size: 20,),
                    Icon(Icons.star,color: Colors.grey,size: 20,),
                    Icon(Icons.star,color: Colors.grey,size: 20,)
                    ,Text("0.4",style: TextStyle(fontSize: 22,  color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("/(5000)",style: TextStyle(fontSize: 15,  color: Colors.white,fontWeight: FontWeight.bold),),
                  ],),
                ),
                Outanima(2
                                 , Padding(
                    padding: EdgeInsets.only(right: 60),
                    child: Text(descr,style: TextStyle(fontSize: 16,  color: Colors.white.withOpacity(0.7),),)),
                )
                  ,Text("Read more . . .",style: TextStyle(fontSize: 16,  color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
