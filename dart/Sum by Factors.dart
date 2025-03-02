void main (){
 Set<int>  result =  findsPrimeNumber(30);
  for (var i in result){
     print(i);
  }
}


String sumOfDivided(List<int> l) {
    // your code
    return "";
}

Set<int> findsPrimeNumber (int n){
   Set<int> primeFactor = {};


   // Step - 1 

   if(n < 2) return primeFactor;  // If n is lass then 2 , it has no prime factors 

   // Step - 2 

   while (n % 2 == 0){ // Check divisibility by 2 (smallest prime )
      primeFactor.add(2);
      n ~/= 2;
   }
   

   // Setp - 3 // Check divisibility by odd numbers form 3 onwerds 
   for (var i = 3; i <= n; i += 2){
       while(n % i == 0){
          primeFactor.add(i);
          n ~/= i;
       }
   }

  

  //Step - 4 // If n is still greater then 1 , it is a prime number itself 

  if (n > 1){
    primeFactor.add(n);
  }
   
   



  return primeFactor;
}


/*
    print(30 % 2);  = 0 Modular 
  print(n ~/ i);  // 30 ~/ 2 = 15
  n ~/= i;        // Same as n = n ~/ i; 


 */





/*


Explanation of the Code
Finding Prime Factors (getPrimeFactors):

Loops through numbers from 2 to sqrt(n).
Divides n until it is no longer divisible by a factor.
Stores prime factors in a Set<int> to ensure uniqueness.
Summing Numbers Based on Prime Factors (sumByPrimeFactors):

Iterates over each number.
Finds its prime factors.
Adds the number to the sum of each of its prime factors in a Map<int, int>.
Sorting and Formatting the Output:

Converts the dictionary to a sorted list of lists.








 */