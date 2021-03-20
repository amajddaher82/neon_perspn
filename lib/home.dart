import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:neon_perspn/list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> images=[
    'img/11.jpg',
    'img/12.jpg',
    'img/13.jpg',
    'img/14.jpg',
    'img/15.jpg',




  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0e0428),
          appBar: AppBar(
  leading: Icon(Icons.arrow_back_ios),
  title: Text('Profile'),
  backgroundColor: Color(0xff09031D),
  elevation: 0,
  actions: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(Icons.more_vert,color: Colors.white,),
    )
  ],
),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:28.0,top: 7),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('img/121.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:38.0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text('Ashraf Page',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 28,color: Colors.white
                ),),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on,color: Colors.white,size: 17,),
                      Text('Aleppo_SY ' ,style: TextStyle(color: Colors.white,fontSize: 17,wordSpacing: 2,letterSpacing: 4),)
                    ],
                  ),
                )],),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
                height: 300,
            child: Swiper(
              itemCount: images.length,
               itemWidth: 300,
              layout: SwiperLayout.STACK,
              itemBuilder: (context,index){
                 return Image.asset(images[index],);
              },
            ),),
          ),

          Padding(
            padding: const EdgeInsets.all(64.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(children: [
                    Text('10K',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    Text('followers',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  ],),
                    Column(children: [
                      Text('82',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      Text('following',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                    ],),
                    Container(child: Row(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left:40.0),
                        child: Icon(Icons.double_arrow_rounded,color: Colors.white,size: 32,),
                      ),

                    ],),
                      width: 80,
                      height: 40,
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(30),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,

                          colors: [

                            Colors.deepPurple,


                            Colors.pink,

                          ]
                        )
                      ),
                    )

                  ],
                ),
              ),
              decoration: BoxDecoration(color: Colors.transparent,
                border: Border.all(color:Color(0xFD1B044C), style: BorderStyle.solid,width: 2),
                borderRadius: BorderRadius.circular(10),
              ),

              width: MediaQuery.of(context).size.width * 0.7,
              height:  MediaQuery.of(context).size.height * 0.11,
            ),
          ),
        ],
      ),

    );
  }
}
