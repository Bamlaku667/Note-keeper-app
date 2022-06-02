
import 'package:flutter/material.dart';

class Note {

  late int _id;
  String _title;
  String? _description;
  String _date;
  int _priority;

  Note(this._title , this._date, this._priority, [ this._description]);

  Note.withId(this._id, this._title , this._date, this._priority, [ this._description]);

  int get id => _id; // and generated automatically

  String get title => _title;

  String? get description => _description;

  String get date => _date;

  set title(String title) {
    if(title.length <= 255) {
      this.title = title;
    }
  }

  set priority(int priority) {
    if (priority >= 1 && priority <= 2) {
      this._priority = priority;
    }
  }

  set date(String date) {
    this.date = date;
  }

  // helper function to convert the note object to map for sqflite plugin 

  Map<String , dynamic>? toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) {
      map['id'] = _id;
      
    }

    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;

    return map;
    
    
  }


}