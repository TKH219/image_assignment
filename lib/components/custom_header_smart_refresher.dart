import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CustomHeaderSmartRefresher extends ClassicHeader {
  const CustomHeaderSmartRefresher()
      : super(
          refreshStyle: RefreshStyle.Follow,
          idleIcon: const CupertinoActivityIndicator(),
          releaseIcon: const CupertinoActivityIndicator(),
          completeIcon: null,
          failedIcon: null,
          completeText: '',
          failedText: '',
          idleText: '',
          releaseText: '',
          refreshingText: '',
        );
}
