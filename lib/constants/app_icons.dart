// ignore_for_file: constant_identifier_names

import 'package:flutter/foundation.dart' show immutable;

@immutable
class AppIcons {
  static const _path = 'assets/icons';

  //auth icons
  static const google = '$_path/auth/Google.svg';
  static const vector = '$_path/auth/Vector.svg';
  static const emails = '$_path/auth/Mail.svg';
  static const lock = '$_path/auth/Lock.svg';

  const AppIcons._();
}
