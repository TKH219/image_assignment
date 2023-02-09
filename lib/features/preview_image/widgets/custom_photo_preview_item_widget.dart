import 'dart:math';

import 'package:flutter/material.dart';
import 'package:extended_image/extended_image.dart';

class CustomPhotoPreviewItemWidget extends StatefulWidget {
  final String photoUrl;

  CustomPhotoPreviewItemWidget({required this.photoUrl});

  @override
  CustomPhotoPreviewItemWidgetState createState() => CustomPhotoPreviewItemWidgetState();
}

class CustomPhotoPreviewItemWidgetState extends State<CustomPhotoPreviewItemWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  Animation<double>? _animation;
  Function()? animationListener;
  List<double> doubleTapScales = <double>[1.0, 3.0];

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      color: Colors.black,
      shadowColor: Colors.black,
      child: ExtendedImage.network(
        widget.photoUrl,
        fit: BoxFit.contain,
        enableSlideOutPage: true,
        mode: ExtendedImageMode.gesture,
        initGestureConfigHandler: (state) {
          double initialScale = 1.0;
          if (state.extendedImageInfo != null) {
            initialScale = initScale(
              size: size,
              initialScale: initialScale,
              imageSize: Size(
                state.extendedImageInfo!.image.width.toDouble(),
                state.extendedImageInfo!.image.height.toDouble(),
              ),
            );
          }
          return GestureConfig(
            inPageView: true,
            initialScale: 1.0,
            maxScale: max(initialScale, 5.0),
            minScale: 1.0,
            animationMinScale: 0.5,
            animationMaxScale: max(initialScale, 5.0),
            initialAlignment: InitialAlignment.center,
            cacheGesture: false,
          );
        },
        onDoubleTap: (ExtendedImageGestureState state) {
          var pointerDownPosition = state.pointerDownPosition;
          double? begin = state.gestureDetails?.totalScale;
          double end;

          if (animationListener != null) {
            _animation?.removeListener(animationListener!);
          }

          _animationController.stop();

          _animationController.reset();

          if (begin == doubleTapScales[0]) {
            end = doubleTapScales[1];
          } else {
            end = doubleTapScales[0];
          }

          animationListener = () {
            state.handleDoubleTap(scale: _animation?.value, doubleTapPosition: pointerDownPosition);
          };

          _animation = _animationController.drive(Tween<double>(begin: begin, end: end));

          _animation!.addListener(animationListener!);

          _animationController.forward();
        },
      ),
    );
  }

  double initScale({
    required Size imageSize,
    required Size size,
    required double initialScale,
  }) {
    var n1 = imageSize.height / imageSize.width;
    var n2 = size.height / size.width;
    if (n1 > n2) {
      final FittedSizes fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
      Size destinationSize = fittedSizes.destination;
      return size.width / destinationSize.width;
    } else if (n1 / n2 < 1 / 4) {
      final FittedSizes fittedSizes = applyBoxFit(BoxFit.contain, imageSize, size);
      Size destinationSize = fittedSizes.destination;
      return size.height / destinationSize.height;
    }

    return initialScale;
  }

  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
