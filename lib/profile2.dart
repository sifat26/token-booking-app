import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
class profile2 extends StatefulWidget {
  const profile2 ({super.key});
  @override
  State<profile2> createState() => _State();
}

class _State extends State<profile2> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text('Admin Profile'),
      ),

      body: StreamBuilder(



        stream: FirebaseFirestore.instance.collection('admins').doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
        builder: (context,snapshot){
          final userData = snapshot.data!.data() as Map<String, dynamic>;

          return Center(
            child: Column(

              children: [
                SizedBox(height: 150,),

                Image(image: AssetImage('lib/Assets/prof.png',),width: 160,height: 160,),
                SizedBox(height: 30,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue.shade200),

                  height: 250,
                  width: 450,
                  padding: EdgeInsets.all(50),

                  child: ListView(
                    children: [
                      Text("Name :" + userData['name']+"\n",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                      Text("Email :" +userData['email'],style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                      //Text("ID : "+userData['id'],style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                      //Text("Dept: "+ userData['dept'],style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

