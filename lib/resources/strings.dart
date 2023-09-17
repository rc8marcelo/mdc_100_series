import 'package:intl/intl.dart' show toBeginningOfSentenceCase;

const kStringShrine = 'SHRINE';
const kStringMenu = 'MENU';
const kStringUsername = 'Username';
const kStringPassword = 'Password';
const kStringCancel = 'CANCEL';
const kStringNext = 'NEXT';

extension StringX on String {
  String get inSentenceCase => toBeginningOfSentenceCase(this) ?? '';
}
