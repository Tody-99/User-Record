import D "mo:base/Debug";
actor UserDatabase {
  type Gender = {
    #male;
    #female;
  };
  type StudentRecord = {
    var name: Text;
    var age: Nat;
    var gender: Gender;
  };
  type Result = {
    #ok: Text;
    #err : Text;
  };
  stable let studentRecord: [StudentRecord] = [
     {
       var name = "vic";
       var age = 14;
       var gender: Gender = #male;
    },
    {
       var name = "dave";
       var age = 15;
       var gender: Gender = #male;
    },
    {
       var name = "josh";
       var age = 18;
       var gender: Gender = #male;
    },
    {
       var name = "Ella";
       var age = 19;
       var gender: Gender = #female;
    },
    {
      var name ="vicky";
      var age = 21;
      var gender : Gender = #female;
    },
    {
       var name = "timi";
       var age = 16;
       var gender: Gender = #male;
    },
    {
       var name = "rose";
       var age = 15;
       var gender: Gender = #female;
    },
    {
       var name = "lizzy";
       var age = 19;
       var gender: Gender = #female;
    },
    {
       var name = "tobi";
       var age = 19;
       var gender: Gender = #male;
    },
    {
       var name = "dan";
       var age = 22;
       var gender: Gender = #male;
    }
  ];
  public shared func updateStudentRecord(index: Nat, name:?Text, age: ?Nat, gender: ?Gender): async Result {
    // find the element based on index
    if(index < studentRecord.size()){
     var record: StudentRecord = studentRecord[index];
     switch(name) {
      case(null) {  
         
      };
      case(?name) { 
        record.name := name;
        };
    };
    switch(age) {
      case(null) {  
         
      };
      case(?age) { 
        record.age := age;
        };
    };
    switch(gender) {
      case(null) {  
         
      };
      case(?gender) { 
        record.gender := gender;
        };
    };
     return #ok "updated record";
    }else{
      D.print("index out of outbounds");
      return  #err "failed to update record";
    };
    
    
    };
};