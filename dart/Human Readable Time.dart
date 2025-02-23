

void main(){
  humanReadable(60);
}

String humanReadable(int seconds) {
   int hours = seconds ~/ 3600;  //since 3600 seconds = 1 hour
   int minutes = (seconds % 3600) ~/ 60; // Uses ~/ for integer division.
   int secondsd = seconds % 60; //Uses % (modulo) to get the remainder.
  
   String h = hours < 10 ? "0$hours" : "$hours";
   String m = minutes < 10 ? "0$minutes" : "$minutes";
   String s = secondsd < 10 ? "0$secondsd" : "$secondsd";
  return '$h:$m:$s';
}