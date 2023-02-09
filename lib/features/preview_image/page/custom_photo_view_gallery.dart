import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_assignment/domain/model/models.dart';
import 'package:image_assignment/features/preview_image/widgets/custom_photo_preview_item_widget.dart';

class CustomPhotoViewGallery extends StatelessWidget {
  final PhotoModel model;

  const CustomPhotoViewGallery({required this.model});

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Material(
      type: MaterialType.transparency,
      color: Colors.transparent,
      child: OrientationBuilder(builder: (context, orientation) {
        return isPortrait ? _buildPortraitWidget() : _buildLandscapeWidget();
      }),
    );
  }

  Widget _buildPortraitWidget() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        _buildPhotoBuilder(),
        Positioned(
          top: 40,
          right: 10,
          child: _buildCloseWidget(),
        ),
      ],
    );
  }

  Widget _buildLandscapeWidget() {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned.fill(child: _buildPhotoBuilder()),
        Positioned(
          top: 10,
          right: 5,
          child: _buildCloseWidget(),
        ),
      ],
    );
  }

  Widget _buildCloseWidget() {
    return IconButton(
      padding: EdgeInsets.all(20),
      onPressed: Get.back,
      icon: Icon(
        Icons.close,
        color: Colors.white,
      ),
    );
  }

  Widget _buildPhotoBuilder() {
    return CustomPhotoPreviewItemWidget(photoUrl: model.imageSource.original,);
  }
}

