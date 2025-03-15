import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

class ShareImageManager {
  ShareImageManager({
    Future<Directory>? shareDirectory,
  }) : shareDirectory = shareDirectory ?? _getShareDirectory();

  final Future<Directory> shareDirectory;

  Future<File?> saveImage(
    ByteData byteData,
    String suffix,
  ) async {
    final shareFile = await _shareImageOf(suffix);
    if (shareFile.existsSync()) {
      shareFile.deleteSync();
    }
    shareFile.createSync();
    shareFile.writeAsBytesSync(
      byteData.buffer.asUint8List(),
      flush: true,
    );
    return shareFile;
  }

  Future<File> _shareImageOf(String suffix) async {
    final saveDirectoryPath = (await shareDirectory).path;
    return File('$saveDirectoryPath/antimine-share-$suffix.png');
  }

  static Future<Directory> _getShareDirectory() async {
    final directory = await getApplicationCacheDirectory();
    final shareDirectory = Directory('${directory.path}/antimine');
    if (!await shareDirectory.exists()) {
      await shareDirectory.create();
    }
    return shareDirectory;
  }
}
