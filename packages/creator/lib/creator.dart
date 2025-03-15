import 'dart:ffi';
import 'package:ffi/ffi.dart' as fii;
import 'dart:io';

import 'generated_bindings.dart';

String createMinefield(
  int inSeed,
  int sliceWidth,
  int inWidth,
  int inHeight,
  int inMines,
  int inX,
  int inY,
) {
  return _bindings
      .createMinefield(
        inSeed,
        sliceWidth,
        inWidth,
        inHeight,
        inMines,
        inX,
        inY,
      )
      .cast<fii.Utf8>()
      .toDartString();
}

const String _libName = 'creator';

/// The dynamic library in which the symbols for [CreatorBindings] can be found.
final DynamicLibrary _dylib = () {
  if (Platform.isMacOS || Platform.isIOS) {
    return DynamicLibrary.open('$_libName.framework/$_libName');
  }
  if (Platform.isAndroid || Platform.isLinux) {
    return DynamicLibrary.open('lib$_libName.so');
  }
  if (Platform.isWindows) {
    return DynamicLibrary.open('$_libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

/// The bindings to the native functions in [_dylib].
final NativeLibrary _bindings = NativeLibrary(_dylib);
