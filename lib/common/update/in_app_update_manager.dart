import 'dart:io';

import 'package:in_app_update/in_app_update.dart';

class InAppUpdateManager {
  AppUpdateInfo? _updateInfo;

  void init() async {
    if (!Platform.isAndroid) {
      return;
    }

    await InAppUpdate.checkForUpdate()
        .then((info) {
          _updateInfo = info;
        })
        .catchError((e) {
          _updateInfo = null;
        });
  }

  void checkForUpdate() async {
    if (_updateInfo == null) {
      return;
    }

    if (_updateInfo?.updateAvailability == UpdateAvailability.updateAvailable) {
      await InAppUpdate.startFlexibleUpdate();
    }
  }

  void dispose() {
    _updateInfo = null;
  }
}
