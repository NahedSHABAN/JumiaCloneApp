//step 2: User repo to perform Database Operation
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jumia/features/registration/user-model.dart';

class UserRepo extends GetxController {
  static UserRepo get instance => Get.find();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> createUser(UserModel user) async {
    try {
      await _db.collection("users").add(user.toJson());
      showSuccessSnackbar();
    } catch (error) {
      showErrorSnackbar();
      print("Error creating user: $error");
    }
  }

  void showSuccessSnackbar() {
    Get.snackbar(
      "Success",
      "Your account has been created.",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.withOpacity(0.1),
      colorText: Colors.green,
    );
  }

  void showErrorSnackbar() {
    Get.snackbar(
      "Error",
      "Something went wrong. Please try again.",
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.redAccent.withOpacity(0.1),
      colorText: Colors.red,
    );
  }
}

