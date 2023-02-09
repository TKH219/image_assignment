import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_assignment/features/get_list_photos/widgets/photo_item_widget.dart';

import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../components/custom_header_smart_refresher.dart';
import '../../preview_image/page/custom_photo_view_gallery.dart';
import '../controller/get_list_photos_controller.dart';

class GetListPhotosScreen extends StatefulWidget {
  @override
  GetListPhotosScreenState createState() => GetListPhotosScreenState();
}

class GetListPhotosScreenState extends State<GetListPhotosScreen> {
  late GetListPhotosController _controller;

  final RefreshController _refreshController = RefreshController();

  @override
  void initState() {
    super.initState();
    _controller = Get.find<GetListPhotosController>();
    // final String accessToken = Get.arguments as String;
    // _controller.accessToken = accessToken;
    _controller.getListPhotos();
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(
      title: Text('Photos Gallery'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: GetBuilder<GetListPhotosController>(
        builder: (controller) {
          return SmartRefresher(
            controller: _refreshController,
            enablePullUp: _controller.isLoadMore,
            enablePullDown: false,
            onLoading: onLoading,
            header: const CustomHeaderSmartRefresher(),
            child: ListView.builder(
              itemCount: _controller.listPhotosDisplay.length,
              itemBuilder: (context, index) {
                return PhotoItemWidget(
                  model: _controller.listPhotosDisplay[index],
                  onTap: () => Get.to(
                    () => CustomPhotoViewGallery(
                      model: _controller.listPhotosDisplay[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  Future<void> onLoading() async {
    await _controller.getListPhotos();
    _refreshController.loadComplete();
  }

  @override
  void dispose() {
    _refreshController.dispose();
    super.dispose();
  }
}
