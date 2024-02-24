import 'dart:io';
import 'opdRegistration.dart';

void main() {
  print("******************************************************************");
  print("***********Welcome to Online OPD Registration App************");
  print("******************************************************************");

  bool islogin = true;

  Map<String, String> usercredentials = {
    "username1@example.com": "Password1",
    "username2@example.com": "Password2",
    "username3@example.com": "Password3",
    "username4@example.com": "Password4",
    "opdreceptionist@example.com": "Opd@1",
    "admin@example.com": "Admin@123",
  };

  while (islogin) {
    print("Enter your Email Id");
    String email = stdin.readLineSync()!;
    print("Enter your Password Id");
    String password = stdin.readLineSync()!;
    if (usercredentials.containsKey(email) &&
        usercredentials[email] == password) {
      if (email == "opdreceptionist@example.com") {
        print("Welcome Receptionist");
        print("You are login Succesfully");
        islogin = false;
        print("do you want to register the user for OPD?");
        print("yes");
        print("No");
        String response = stdin.readLineSync()!;
        if (response == "yes") {
          opdregistration();
        }
        print("No of patients are registered now");
        print("Enter 1 to see");
        String check_registered_persons = stdin.readLineSync()!;
        if (check_registered_persons == "1") {
          int mapcount = usersList.where((e) => e == Map).length;
          print("Total number of Patients are registered now:  $mapcount");
        }
      } else {
        print("welcome user");
        print("You are login Succesfully");
        islogin = false;
        opdregistration();
      }
    } else {
      print("You Entered Incorrrect email or Password");
    }
  }
}
