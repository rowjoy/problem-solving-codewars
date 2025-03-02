

void main (){
   primeFactors(30);
}


String primeFactors(int n)  {
  DateTime start = DateTime.now();

   List<int> primeValue = [];
   if( n < 2 ) return "($n)";

   
   /*
   while (n % 2 == 0){
      primeValue.add(2);
      n~/=2;
   };

   for(int i = 3; i <= n;  i += 2){
      while(n % i == 0){
        primeValue.add(i);
        n ~/= i;
      }
   };

   */
   
   

  
  for(int i = 2; i * i <= n; i++){   
     while(n % i == 0){
       primeValue.add(i);
       n ~/= i;
     }
  }






   if(n > 1){
      primeValue.add(n);
   };

  print(primeValue);

  DateTime end = DateTime.now();

  Duration executionTime = end.difference(start);
  print("Execution Time: ${executionTime.inMicroseconds} µs");
  //Execution Time: 2523 µs
  // Execution Time: 2491 µs
  
  return "";
}


/*

[44621, 76694245363]
Execution Time: 71 µs

*/


/*

    List<int> result = [];
    int start = 2;
    String show = "";
    while (n != 1) {
      if(n % start == 0) {
        n = n ~/ start;
        result.add(start);
      } else {
        start += 1;
      }
    }
    print(result);
    List _main = [];
    if(result.length > 1){
     for(var i in result){
       List _r =  result.where((element) => element.toString().contains(i.toString())).toList();
       if(_r.length < 2){
         var a = "(${_r.first})";
         _main.add(a);
       }else{
         num sum = _r.fold(0, (previous, current) => previous + current);
         if(sum % _r[0] == 0){
            var b = _r.length;
            var a = "(${_r[0]}**$b)";
            _main.add(a);
         }else{
           for(var i in _r){
              _main.add("($i)");
           }
         }
       }
     }
    }else{
      var _a = "(${result[0]})";
      _main.add(_a);
    }
    List _o = [];
    List original = _main.toSet().toList();
    for(var i in result.toSet()){
      List _t = original.where((element) => element.toString().contains(i.toString())).toList();
      show += _t[0];
    }
    print(show);
    return show;


 */


