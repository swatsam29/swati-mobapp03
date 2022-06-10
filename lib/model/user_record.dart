enum Classification{
  firstYear, secondYear, thirdYear, fourYear, graduate
}

enum Major{
  cs, se, ce, ds, other
}

enum ProgLanguage{
  dart, java, javascript, python, cpp, csharp
}

class UserRecord{
  late String email;
  late String password;
  late String name;
  late String phone;
  late int age;
  late Classification classification;
  late Major major;
  late Map<ProgLanguage, bool> progLanguages;


UserRecord({
    this.email= '',
    this.password= '',
    this.name= '',
    this.phone= '',
    this.age= 0,
    this.classification= Classification.firstYear,
    this.major= Major.cs,

  })
  {
    progLanguages = {};
    for(var e in ProgLanguage.values){
      progLanguages[e] = false;
    }
  }
}