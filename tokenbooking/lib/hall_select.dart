import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tokenbooking/splash_screen3.dart';

class Hallpage extends StatefulWidget {
  const Hallpage({super.key});

  @override
  State<Hallpage> createState() => _HallpageState();
}

class _HallpageState extends State<Hallpage> {

  String selectedItem = 'JAMH';
  List options = ['JAMH','BSMRH',];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.indigo.shade100,
      appBar: AppBar(
        title: Text("Hall Select"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CarouselSlider(

            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://esrm.mbstu.ac.bd/uploads/slider/39370904945_7c780b3642_k5.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://cdn.risingbd.com/media/imgAll/2021March/en/Campus-2107011526.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage("https://esrm.mbstu.ac.bd/uploads/slider/banner47.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 250.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(height: 80,),
          DropdownButton(
              value: selectedItem,
              items: options
                  .map((day) => DropdownMenuItem(
                child: Text(day),
                value: day,),
              ).toList(),
              onChanged: (value){
                setState(() {
                  selectedItem = value.toString();
                });
              }),
          SizedBox(height: 100,),
          Container(
            width: 120,
            height: 100,
            color: Colors.cyan,
            child: IconButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> SplashScreen3(selectedItem)));
                },
                icon: Icon(Icons.navigate_next,size: 70,color: Colors.white,)),
          )
        ],
      ),
    );
  }
}
