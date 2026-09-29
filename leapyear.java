import java.util.*;

public class leapyear{
   public static boolean isleapyear(int year){
      if(year % 400 == 0) return true;
      if(year % 100 == 0) return false;
      return year % 4 == 0;
  }
public static void main(String[] args){
     if(args.length > 0){
         int year = Integer.parseInt(args[0]);
         if(isleapyear(year)){
             System.out.println(year  "is a Leap year");
         } else {
             System.out.println(year + "is NOT a Leap year");
         }
     }else{
       Scanner sc = new Scanner(System.in);
       System.out.print("Enter a year: ");
       if(sc.hasNextInt()){
          int year = sc.nextInt();
          if(isleapyear(year)){
             System.out.println(year + "is a leap year");
          }else{
              System.out.println(year + "is NOT a leap year");
          }
        }
      sc.close();
     }
   }
}

