void main(){
  print("hello");
  isValidIP('abc.def.ghi.jkl');
}


bool isValidIP(String input){
  final RegExp ipv4Regex = RegExp(
    r'^(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])'
    r'(\.(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])){3}$',
  );
  return ipv4Regex.hasMatch(input);
}

//https://www.codewars.com/kata/54d496788776e49e6b00052f/train/dart
//224,369