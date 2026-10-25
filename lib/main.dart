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
  Map<String,int>student={
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
  List<int>?numbers=null;
  print(numbers?.length);
}
Formatexception(){ //19
  String text ="a,b,c";
  try{
    int number = int.parse(text);
    print(number);
  }
  on FormatException{
    print("Invaliud number formatr !");
  }
}
EvenOddPrimeDuplicate(){
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
}