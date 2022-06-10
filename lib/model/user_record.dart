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

  UserRecord clone(){
    var copy = UserRecord(
      email: email,
      password: password,
      name: name,
      phone: phone,
      age: age,
      classification: classification,
      major: major,
    );
    copy.progLanguages = {... progLanguages};
    return copy;
  }

  void copyFrom(UserRecord obj){
      email = obj.email;
      password= obj.password;
      name= obj.name;
      phone= obj.phone;
      age= obj.age;
      classification= obj.classification;
      major= obj.major;
      progLanguages = {... obj.progLanguages};

  }

  @override
  String toString() {
    return 'UserRecord[name= $name($email, $password)]';
  }
}

List<UserRecord> fakeDB= [
  UserRecord(
    email: '1@test.com', password: '111111', name: 'One John', phone: '1112223333'
),
 UserRecord(
    email: '2@test.com', password: '222222', name: 'One Mary', phone: '9992223333'
),
];