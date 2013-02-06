library elearn;

import 'package:mongo_dart/lib/mongo_dart.dart';
//import 'package:json/json.dart';
import 'questionloader.dart';
import 'package:json/json_object.dart';
import "dart:json";
class questionSetter{
  
  questionSetter(){
    questionloader ql=new questionloader();
    
    Map qmap=ql.questions;
    //var json= json(qmap);
    //print(stringify((qmap)));
  }

  
  
}

main(){
 // new questionSetter();
  questionloader ql=new questionloader();
  
  Map qmap=ql.questions;
  //var json= json(qmap);
  var basic = qmap;
  //objectToString(qmap);
  //objectToJson(basic).then((jsonStr) => print(jsonStr));  print(stringify(qmap));
  print(JSON.json(qmap));
  print ("done");
  
}