import 'package:get/get.dart';

class ProfileController extends GetxController {
  // Observable variables
  var name = ''.obs;
  var username = ''.obs;
  var bio = ''.obs;

  // Function to update profile data
  void updateProfile(String newName, String newUsername, String newBio) {
    name.value = newName;
    username.value = newUsername;
    bio.value = newBio;
  }
}
