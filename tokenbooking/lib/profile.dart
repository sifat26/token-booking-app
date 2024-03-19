import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile ({super.key});
  @override
  State<profile> createState() => _State();
}

class _State extends State<profile> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('students').doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
        builder: (context,snapshot){
          final userData = snapshot.data!.data() as Map<String, dynamic>;
          return ListView(
            children: [
              Text("Name :" + userData['name'],),
              Text("Email :" +userData['email'],),
              Text("ID : "+userData['id'],),
              Text("Dept: "+ userData['dept'],),
            ],
          );
        },
      ),
    );
  }
}

