

class StudentInfo{
  String name = 'Jhon Doe';
  String address ='123 Main Street';
  List<int> scors =[90,85,82];
  double average = 0;

  StudentInfo(){
   // average = scors.reduce((value, element) => value + element) / scors.length;
    int sumScors = 0;
    for(int score in scors){
      sumScors += score;
    }
    //print('${sumScors / scors.length}');
    average = sumScors / scors.length;

  }
   

}

void main(){
  StudentInfo studentInfo = StudentInfo();
  print('Name : ${studentInfo.name}');
  print('Address : ${studentInfo.address}');
 // print('Scors : ${studentInfo.scors}');
  print('Average : ${studentInfo.average}');
}