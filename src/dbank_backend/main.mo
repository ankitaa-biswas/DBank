import Debug "mo:base/Debug";
import Float "mo:base/Float";

import Time "mo:base/Time";



actor DBank{
 stable var currentValue: Float = 300.00;
  currentValue := 300;
Debug.print(debug_show(currentValue));



stable var startTime = Time.now();
startTime:=Time.now();
Debug.print(debug_show(startTime));


// let id=34355;

 public func topUp(amount :   Float){
  currentValue += amount;
  Debug.print(debug_show(currentValue));  
 };

// topUp();
 

 public func withdraw(amount: Float){
  let temp : Float = currentValue-amount;

  if(temp>=0){
     currentValue-=amount;
    Debug.print(debug_show(currentValue));
  }else{
    Debug.print("amount too large");
  }

 
 };

 public query func checkBal(): async Float{


  return currentValue;
 };


public func compound(){
  let  currentTime = Time.now();
  let timeElapsedNS = currentTime - startTime;
  let timeElapsedS = timeElapsedNS / 1000000000;
  currentValue := currentValue * (1.001 ** Float.fromInt(timeElapsedS));
  startTime := currentTime;
}

}



