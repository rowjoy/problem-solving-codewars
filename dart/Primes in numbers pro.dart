void main (){
 String result = primeFactors(7775460);
 print(result);
}


String primeFactors(int n) {
  DateTime start = DateTime.now();

  List<int> primeFactors = [];

  if(n < 2) return "($n)";
  
  for(int i = 2 ; i * i  <= n; i++){
     while(n % i == 0){
        primeFactors.add(i);
        n ~/= i;
     }
  }

  if(n > 1) {
     primeFactors.add(n);
  }

  Map<int,int> countMap = {};
  for(int i in primeFactors){ // 2 
   countMap[i] = (countMap[i] ?? 0) + 1;
  }
  String result = countMap.entries.map((e)=> e.value > 1 ? "(${e.key}**${e.value})" : "(${e.key})").join('');
  DateTime end = DateTime.now();

  Duration duration = end.difference(start);

  print("Total time count ${duration.inMicroseconds}");
  return result;

  
}



/*


Step	i	    Condition (i * i ≤ n?)        n % i == 0 (Factor?)	    Updated n
1    	2	    2 * 2 ≤ 36 ✅	              Yes (Factor: 2)	           36 ÷ 2 = 18
2	    2	    2 * 2 ≤ 18 ✅               	Yes (Factor: 2)          	18 ÷ 2 = 9
3	    3	    3 * 3 ≤ 9 ✅	                Yes (Factor: 3)         	9 ÷ 3 = 3
4	    3	    3 * 3 ≤ 3 ❌	                (Loop Ends)	              n = 3





 */

/*


  int x = 0;
  while (x < primeFactors.length){
     int sr = primeFactors[x];
     int v = 0;
     for(var i in primeFactors){
        if(sr  == i){
           v++;
        }
     }
     print("Serch value $sr total value $v");
     result += "($sr**$v)";
    x++;
  }



 */