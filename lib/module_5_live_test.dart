void main(){

Triangle triangle = Triangle(10.6, 5.5, 0.0);

print('This is My module 5 live test Output:');
print('--------------------------------------\n');
print('Your area of a triangle is:${triangle.triangle()}');

  
}

class Triangle{
  double base;
  double height;
  double areaOfTriangle;

  Triangle(this.base, this.height, this.areaOfTriangle);

  double triangle(){
    areaOfTriangle = 0.5*(base*height);
    return areaOfTriangle;
  }
}