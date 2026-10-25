WherwFuncation(){ //11
  List<int>number=[2,45,67,78,5,4,3,54,63,34,34];
  var result=number.where((n)=> n> 50).toList();
  print(result);

}
SquarNumber(){  //12
  List<int>number=[2,3,4,5,6,7];
  var result=number.map((n)=>n*n).toList();
  print(result);
}
ProductPrice(){ //13
  List<int>price= [34,56,77,55,66];
  var total= price.fold(0, (sum,price)=> sum +price);
  print("Total price =$total");
}
StudenthighestMarks(){ //14
  Map<String,int>student={                 //
    "sajib":78,
    "rakib":70,
    "rifat":57,
  };
  String highest =student.keys.first;
  student.forEach((name,marks){
    if (marks >student[highest]!){

    }
  });
  print("Highet mark :$highest");
  print(" marks:${student[highest]}");
}
ShoppingcartQuantity(){ //15
  Map<String,int>cart={
    "Rice":60,
    "Oil":200,
    "Sugar":110
  };
  int total =cart.values.fold(0, (sum,quantity){
    return sum+quantity;
  });
  print("Total Quantity :$total");
}
null_awareoperator(){ //16
  String ? name=null ;
  print(name?.length);
}
Nullablelist(){ //17
  List<int>?numbers=null; //
  print(numbers?.length);
}
Formatexception(){ //18
  String text ="a,b,c";
  try{
    int number = int.parse(text);
    print(number);
  }
  on FormatException{
    print("Invaliud number formatr !");
  }
}
EvenOddPrimeDuplicate(){ //19
  List<int>number=[2,3,4,5,6,7,8,9,10,2,3];
  var even=number.where((n)=>n% 2== 0).toList();
  var odd=number.where((n)=>n% 2!= 0).toList();
  var prime= number.where((n){
    if(n<2)return false;
    for (int i =2;i*i<=n;i++){
      if(n %i ==0) return false;
    }
    return true ;
  }).toSet().toList();
  var duplicates =number.where((n)=>number.indexOf(n)!=number.lastIndexOf(n)).toSet().toList();
  print("Even :$even");
  print("Odd :$odd");
  print("Prime :$prime");
  print("Duplicates :$duplicates");

}
EmployeeSalary(){ //20
  Map<String,double>employee={
    "sajib":20000,
    "shakib":30000,
    "rakib":40000,
    "rajib":50000,
  };
  employee.updateAll((name, salary)=>salary *1.10);
  print(employee);
}
FizzBuzzPrime(){ //21
  List<int>number=[2,3,4,5,6,7,8,10,15,20,21,23,25,30,27,30,45];
  for(int n in number){
    if(n %15==0){
      print("$n=FizzBuzz");
    }else if(n%3 ==0){
      print("$n=Fizz");
    }
    else if(n %5 ==0){
      print("$n=Buzz");
    }else if(n>1 && List.generate(n-2,(i)=>i+2 ).every((i)=>n%i !=0)){
  print("$n=prime");
  }
    else{
      print(n);
    }
  }
}
Finddifferencemaximumandminimumvalues(){ //22
  List<int>number=[10,25,5,40,15];
  int largest =number.reduce((a ,b)=>a >b ? a:b);
  int smallest =number.reduce((a ,b)=>a <b ? a:b);
   int difference =largest -smallest ;
   print("largest: $largest");
   print("smallest:$smallest");
   print("difference:$difference");
}
void main(){
  WherwFuncation();
  SquarNumber();
  ProductPrice();
  StudenthighestMarks();
  ShoppingcartQuantity();
  null_awareoperator();
  Nullablelist();
  Formatexception();
  EvenOddPrimeDuplicate();
  EmployeeSalary();
  FizzBuzzPrime();
  Finddifferencemaximumandminimumvalues();
}