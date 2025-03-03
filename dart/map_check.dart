void main (){
   final value = RemitterType.getRemitterTypeID("123");
   print(value);
}



Map <String , List<String>> AppRemitterTypeID = {
  "123": ["6","0"],
  "192": ["7","7"],
  "223": ["22","22"],
  "119": ["28","28"],
  "275": ["29","29"],
  "18":  ["31","31"],
  "86":  ["39","39"],
  "91":  ["51","51"],
  "287": ["54","54"],
  "147": ["71","71"],
  "277": ["74","74"],
  "79":  ["77","77"],
  "85":  ["80","80"],
  "288": ["83", "83"],
  "137": ["89", "89"],
  "138": ["92", "92"]
};


class  RemitterType {
 static bool get kDebugMode => false;
 static String getRemitterTypeID (String countryID){
    if(kDebugMode){
      return "${AppRemitterTypeID["${countryID}"]?[0]}";
    }else {
      return "${AppRemitterTypeID["${countryID}"]?[1]}";
    }
  }
}
