import 'package:bloc_course/core/app_constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

Widget offlineWidget({required Widget myWidget}) {
  return OfflineBuilder(
    connectivityBuilder: (
      BuildContext context,
      ConnectivityResult connectivity,
      Widget child,
    ) {
      final bool connected = connectivity != ConnectivityResult.none;
      return connected
          ? myWidget
          : Center(child: Image.asset(AppImages.offline));
    },
    child: Container(),
  );
}
