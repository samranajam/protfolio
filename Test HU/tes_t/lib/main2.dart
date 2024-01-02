
import 'package:cloud_firestore/cloud_firestore.dart';

class firebase_connect {
  final CollectionReference empdata =
      FirebaseFirestore.instance.collection("Employee_Data");
  //insert
  Future<void> addemp1(String name, int age, int number) {
    return empdata.add({"Emp_Name": name, "Emp_Age" : age, "Phone_No" : number,  "Time": Timestamp.now()});
  }
}
