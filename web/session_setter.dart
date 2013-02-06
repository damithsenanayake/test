library elearn;

import 'question.dart';
//import 'quiz.dart';

class session_setter {
  
  new_topic_session(int tn){
    
      var qulist=new List();
      //qulist.length=10;
     question q= new question('a','b','c',new Map(),'d',new Map(),1);
     qulist.add(q);
     qulist.add(new question('a','b1','c',new Map(),'d',new Map(),1));
     qulist.add(new question('a','b2','c',new Map(),'d',new Map(),1));
     qulist.add(new question('a','b3','c',new Map(),'d',new Map(),1));
     
     for(int i=0;i<qulist.length;i++){
       print(qulist[i].getqus_text());
     }
  
    
  }
}

class session{
  String type;
    
}
class topic_session extends session{
  topic_session(int topic,String type){
    this.type=type;
  }
  
}
class complete_session extends session{
  complete_session(String type){
    this.type=type;
  }
  
}
main(){
  session_setter ss=new session_setter();
  ss.new_topic_session(1);
}