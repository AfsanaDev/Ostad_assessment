abstract class Role{
  void displayRole();
}

class Person{
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  String getName()=>name;
  int getAge()=>age;
  String getAddress()=>address;
 
  void displayRole(){
    }
}

class Student extends Person{
String StudentId;
String grade;
List<double> course;

Student(this.StudentId, this.grade, this.course):super('John Doe', 20, ' 123 Main St');

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
      print('Error: $e');
    }
    return avg/course.length;
  }
}

class Teacher extends Person{
  String TeacherId;
  List<String> course;

  Teacher(this.TeacherId, this.course):super('Mrs. Smith', 35, ' 456 Oak St');
  
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
  Student student = Student('', '', [82.0, 85.0, 90.0]);
  student.displayRole();
  print('Name: ${student.name}');
  print('Age: ${student.age}');
  print('Address: ${student.address}');
  print('Average: ${student.clculateAvg()}\n');

  //print('');
  print('This is for display Teacher information');
  print('==============================================\n');
  Teacher teacher= Teacher('', ['Math', 'Bangla', 'English']);
  teacher.displayRole();
  print('Name: ${teacher.name}');
  print('Age: ${teacher.age}');
  print('Address: ${teacher.address}');
  print('Courses Taught:');
  teacher.displayCourse();
}
