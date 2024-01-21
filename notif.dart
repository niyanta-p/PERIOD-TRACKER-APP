import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NotifPage extends StatelessWidget {
  final DateTime selectedStartDate;
  final DateTime selectedEndDate;

  NotifPage({
    required this.selectedStartDate,
    required this.selectedEndDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showNotification(context);
          },
          child: Text("Show Notification"),
        ),
      ),
    );
  }

  void showNotification(BuildContext context) {
    Fluttertoast.showToast(
      msg:
          "Date range: ${selectedStartDate.toLocal()} - ${selectedEndDate.toLocal()}",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blue,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
