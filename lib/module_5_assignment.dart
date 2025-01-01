abstract class Role{
  void displayRole();
}

class Person implements Role{
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  String getName()=>name;
  int getAge()=>age;
  String getAddress()=>address;
 @override
  void displayRole(){
    }
}

class Student extends Person{
String studentId;
String grade;
List<double> course;

Student(String name, String address,int age,this.studentId, this.grade, this.course):super(name,age, address);

@override
  void displayRole() {
    print('Role: Student');
  }
  
  double clculateAvg(){

    double avg =0.0;
    try{
      for(int i =0 ; i<=course.length; i++){
      avg += course[i];
    }
    }catch(e){
      //print('Error: $e');
    }
    return avg/course.length;
  }
}

class Teacher extends Person{
  String teacherId;
  List<String> course;

  Teacher(String name, int age, String address,this.teacherId, this.course):super(name, age, address);
  
  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayCourse(){
    for( var course in course){
      print(course);
    }
  }
}

void main(){

  print('This is My module 5 assignment');
  print('');
  print('This is for display Student information');
  print('==============================================\n');
  Student student = Student('John Doe', '123 Main St', 20,'233','A', [82, 85.0, 90.0]);

  student.displayRole();
  print('Name: ${student.getName()}');
  print('Age: ${student.getAge()}');
  print('Address: ${student.getAddress()}');
  print('Average: ${student.clculateAvg().toStringAsFixed(2)}\n');

  //print('');
  print('This is for display Teacher information');
  print('==============================================\n');
  
  Teacher teacher= Teacher('Mrs. Smith', 35, '456 Oak St', '123', ['Math', 'Bangla', 'English']);
  teacher.displayRole();
  print('Name: ${teacher.getName()}');
  print('Age: ${teacher.getAge()}');
  print('Address: ${teacher.getAddress()}');
  print('Courses Taught:');
  teacher.displayCourse();
}
