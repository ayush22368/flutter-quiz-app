class questionmodel{
  String question;
  String correct_answer;
  List<String>incorrectanswer;
  questionmodel({required this.question,required this.correct_answer,required this.incorrectanswer});

  factory questionmodel.fromjson(Map<String,dynamic>json){
    List<String>options=[];
    for(var ks in json["incorrect_answers"]){
      options.add(ks);
    }
    options.add(json["correct_answer"]);
    options.shuffle();
    return questionmodel(question: json["question"],correct_answer: json["correct_answer"],incorrectanswer: options);
  }
}