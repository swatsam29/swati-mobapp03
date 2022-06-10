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
  late Map<ProgLanguage, bool> progLanguage;


UserRecord({
    this.email= '',
    this.password= '',
    this.name= '',
    this.phone= '',
    this.age= '',
    this.classification= '',
    this.major= '',
    this.email= '',
    this.email= '',

  })
}