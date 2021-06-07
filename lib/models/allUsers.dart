import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Users{
  String id;
  String name;
  String email;
  String phone;

  Users(this.id, this.name, this.email, this.phone);

  Users.fromSnapshot(DataSnapshot dataSnapshot){
    id = dataSnapshot.key;
    name = dataSnapshot.value["name"];
    email = dataSnapshot.value["email"];
    phone = dataSnapshot.value["phone"];
  }
}