void main(){
  sumArray([0,0,0,0,1]);
}



int sumArray(List<int>? array) {
  if( array == null || array.isEmpty) return 0;
  int largenumber = array[0];
  int lowestNumber = array[0];
  int sumArray = 0;
  
  int i = 0;
  while (i < array.length){
    
    if(largenumber <= array[i]){
       largenumber = array[i];
       print("largenumber ${largenumber} : ${array[i]} ${i}");
    }

    if(lowestNumber >= array[i]){
      lowestNumber = array[i];
    }
    sumArray += array[i];
    i++;
  }

  print(lowestNumber);
  print(largenumber);
  print(sumArray);

  int sum = lowestNumber + largenumber;
  print("sum ${sum}");

  int result = sumArray - sum;
  print(result);

  return result;
}



int sumArray1(List<int>? array) {
  if(array!.isEmpty) return 0;
  
  int largenumber = array[0];
  int lowestNumber = array[0];
  int sumArray = 0;
  
  int i = 0;
  while (i < array.length){
    
    if(largenumber <= array[i]){
       largenumber = array[i];
    }
    if(lowestNumber >= array[i]){
      lowestNumber = array[i];
    }
    sumArray += array[i];
    i++;
  }

  int sum = lowestNumber + largenumber;
  int result = sumArray - sum;
  return result;
}



int binToDec(String bin) {
  // Validate input: Ensure the string is a valid binary number
  if (bin.isEmpty || !RegExp(r'^[01]+$').hasMatch(bin)) {
    throw ArgumentError("Invalid binary string: $bin");
  }

  // Convert binary string to decimal integer
  return int.parse(bin, radix: 2);
}

//Sum without highest and lowest number
//https://www.codewars.com/kata/576b93db1129fcf2200001e6/train/dart
