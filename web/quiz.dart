library elearn;
import 'question.dart';
import 'dart:math';

List shuffle(List items) {
  var random = new Random();

  // Go through all elements.
  for (var i = items.length - 1; i > 0; i--) {

    // Pick a pseudorandom number.
    var n = random.nextInt(items.length + 1);

    var temp = items[i];
    items[i] = items[n];
    items[n] = temp;
  }

  return items;
}

class quiz{
  
  List<question> qus_set,done_qus,fresh_qus;
  int quiz_size;
  String quiz_type;
  int topic;  
  
  quiz(int size,String type,int tp, List<question> dq, List<question> fq){
    this.done_qus=dq;
    this.fresh_qus=fq;
    this.quiz_size=size;
    this.quiz_type=type;
    this.topic=tp;
  }
  
  
  List<question> get_question_set(){
    return qus_set;
  }
  
  set_question_set(){
    
    List<question> dq=shuffle(done_qus);
    List<question> fq=shuffle(fresh_qus);
    int tempx=quiz_size*pow((dq.length/(dq.length+fq.length)),3);
    int cnt=0;
    for(int i=0;i<tempx.floor();i++){
      qus_set[cnt]=dq[i];
      cnt++;
    }
    
    int tempy=quiz_size-tempx.floor();
    for(int i=0;i<tempy;i++){
      qus_set[cnt]=fq[i];
      cnt++;
    }
  }
  
}
