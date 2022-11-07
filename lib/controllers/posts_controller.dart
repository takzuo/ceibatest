import 'package:get/state_manager.dart';
import 'package:ceibatest/services/remote_services.dart';

class PostController extends GetxController {
  var isLoading = true.obs;
  var postList = [].obs;

  @override
  void onInit() {
    fetchPosts();
    super.onInit();
  }

  void fetchPosts() async {
    try {
      isLoading(true);
      var post = await RemoteServices.fetchPosts();
      if (post != null) {
        postList.value = post;
      }
    } finally {
      isLoading(false);
    }
  }
}
