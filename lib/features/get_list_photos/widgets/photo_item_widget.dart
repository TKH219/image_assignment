import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_assignment/domain/model/models.dart';

import '../../../components/loading_circle.dart';

class PhotoItemWidget extends StatelessWidget {
  final PhotoModel model;
  final Function()? onTap;

  const PhotoItemWidget({
    required this.model,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 2),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6.0),
          child: CachedNetworkImage(
            imageUrl: model.imageSource.medium,
            progressIndicatorBuilder: (context, url, downloadProgress) => LoadingCircle(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
