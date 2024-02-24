import 'dart:io';

List usersList = [];
opdregistration() {
  Map<String, dynamic> usercredentials = {};
  print("ONLINE OPD REGISTRATION SYSTEM");

  print("Select the hospital by enter number");
  print("Enter 1 to Select Hospital Nehal");
  print("Enter 2 to Select Hospital Al-Mumtaz");
  print("Enter 3 to Select Hospital Atia");
  print("Enter 4 to Select Hospital Al-Khidmat");

  String hospital_name = stdin.readLineSync()!;
  usercredentials["Hospital_Name"] = hospital_name;
  if (hospital_name == "1") {
    usercredentials["Hospital_Name"] = "Nehal Hospital";
    print("Nehal Hospital");
  } else if (hospital_name == "2") {
    usercredentials["Hospital_Name"] = "Al-Mumtaz Hospital";
    print("Al-Mumtaz Hospital");
  } else if (hospital_name == "3") {
    usercredentials["Hospital_Name"] = "Atia Hospital";
    print("Atia Hospital");
  } else if (hospital_name == "4") {
    usercredentials["Hospital_Name"] = "Al-Khidmat Hospital";
    print("Al-Khidmat Hospital");
  }

  print("Select the Department Name by enter number");
  print("Enter 1 to Select Eye (Mon, Tue, Wed, Thur, Fri)");
  print("Enter 2 to Select Chest (Mon, Tue, Wed, Thur, Fri)");
  print("Enter 3 to Select Orthopedic (Mon, Tue, Wed, Thur, Fri)");
  print("Enter 4 to Select Skin (Mon, Tue, Wed, Thur, Fri)");

  String department_name = stdin.readLineSync()!;
  usercredentials["Depart_Name"] = department_name;
  if (department_name == "1") {
    usercredentials["Depart_Name"] = "Eye (Mon, Tue, Wed, Thur, Fri )";
    print("Eye (Mon, Tue, Wed, Thur, Fri)");
  } else if (department_name == "2") {
    usercredentials["Depart_Name"] = "Chest (Mon, Tue, Wed, Thur, Fri )";
    print("Chest (Mon, Tue, Wed, Thur, Fri)");
  } else if (department_name == "3") {
    usercredentials["Depart_Name"] = "Orthopedic (Mon, Tue, Wed, Thur, Fri )";
    print("Orthopedic (Mon, Tue, Wed, Thur, Fri)");
  } else if (department_name == "4") {
    usercredentials["Depart_Name"] = "Skin (Mon, Tue, Wed, Thur, Fri )";
    print("Skin (Mon, Tue, Wed, Thur, Fri)");
  }

  stdout.write("Date for Appointment: dd/mm/yy ");
  String appointmentdate = stdin.readLineSync()!;
  usercredentials["Appointment_date"] = appointmentdate;

  // **************************************************************

  print("**************************************************************");
  print("Patient Details");
  print("**************************************************************");

  stdout.write("Patient Name ");
  String patient_Name = stdin.readLineSync()!;
  usercredentials["Patient_Name"] = patient_Name;
  print("Select Gender by enter the number");
  print("Enter 1 to Select Male");
  print("Enter 2 to Select Femal");
  print("Enter 3 to Select Transgender");
  String gender = stdin.readLineSync()!;
  usercredentials["Gender"] = gender;
  if (gender == 1) {
    usercredentials["Gender"] = "Male";
    print("Male");
  } else if (gender == 2) {
    usercredentials["Gender"] = "Female";
    print("Female");
  } else if (gender == 3) {
    usercredentials["Gender"] = "Transgender";
    print("Transgender");
  }
  stdout.write("Address  ");
  String address = stdin.readLineSync()!;
  usercredentials["Address"] = address;
  stdout.write("Patient CNIC: xxxxx-xxxxxxx-x  ");
  String cnic = stdin.readLineSync()!;
  usercredentials["CNIC"] = cnic;
  stdout.write("Patient Contact No: xxxx-xxxxxxx  ");
  String contact_no = stdin.readLineSync()!;
  usercredentials["Contact_No"] = contact_no;
  stdout.write("Enter Patient Complaints/Problems  ");
  String patient_problem = stdin.readLineSync()!;
  usercredentials["Patient_Problem"] = patient_problem;
  usersList.add(usercredentials);

  print("");
  print("");
  print("********************************************************");
  print("PATIENT ONLINE REGISTRATION SLIP");
  print("********************************************************");
  print("Patient Name: ${usercredentials["Patient_Name"]}");
  print("Gender: ${usercredentials["Gender"]}");
  print("Address: ${usercredentials["Address"]}");
  print("CNIC ${usercredentials["CNIC"]}");
  print("Contact No: ${usercredentials["Contact_No"]}");
  print("Patient Problem:  ${usercredentials["Patient_Problem"]}");
  print("");
  print("");
  print("");
  print(
      "Please bring this Online OPD Registration Slip with you on the Reception");
}
