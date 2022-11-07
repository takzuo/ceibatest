import 'package:get/state_manager.dart';
import 'package:ceibatest/services/remote_services.dart';

class PostsController extends GetxController {
  var isLoading = true.obs;
  var postsList = [].obs;

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var users = await RemoteServices.fetchProducts();
      if (users != null) {
        postsList.value = users;
      }
    } finally {
      isLoading(false);
    }
  }
}
