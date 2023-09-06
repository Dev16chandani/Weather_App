import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CounterProvider extends ChangeNotifier{
  int count = 0;
  CounterProvider(){
    Stream.periodic(const Duration(seconds: 2)).listen((_) {
      Future<dynamic>.delayed(const Duration(seconds:  1),(){
        return incraese();
      });
    });
  }
  String? feeds_a;
  String? feeds_b;
  String? feeds_c;

  dynamic incraese()async{

    final data = await http.get(Uri.parse('https://api.thingspeak.com/channels/1596152/feeds.json?api_key=P7S0UYX236LLKQJU&results=2'));
    var livedata = jsonDecode(data.body.toString());

    feeds_a = livedata['feeds'][0]['field1'];
    feeds_b = livedata['feeds'][0]['field2'];
    feeds_c = livedata['feeds'][0]['field3'];
    print(feeds_a);
    print(feeds_b);
    print(feeds_c);




    print(DateTime.now());
    count++;
    notifyListeners();
  }
}