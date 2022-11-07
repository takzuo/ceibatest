import 'package:get/state_manager.dart';
import 'package:ceibatest/services/remote_services.dart';

class UserController extends GetxController {
  var isLoading = true.obs;
  var userList = [].obs;

  @override
  void onInit() {
    fetchUsers();
    super.onInit();
  }

  void fetchUsers() async {
    try {
      isLoading(true);
      var users = await RemoteServices.fetchProducts();
      if (users != null) {
        userList.value = users;
      }
    } finally {
      isLoading(false);
    }
  }
}
