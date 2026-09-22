import 'dart:typed_data';

import 'package:pdf/widgets.dart' as pw;

import '../../admin_view/Tools.dart';

/// Customer logos are stored as the decimal list from `Uint8List.toString()`
/// (`[137, 80, 78, ...]`). A customer with no logo is stored as null, `""`,
/// `"null"`, or `"[]"`. Those values, and any bytes that are not a real image,
/// must be left out of the quote instead of crashing export.
pw.MemoryImage? customerLogoImage(String? logo) {
  final bytes = customerLogoBytes(logo);
  if (bytes == null) return null;
  try {
    return pw.MemoryImage(bytes);
  } catch (_) {
    // image 4.3 (used by pdf 3.11) throws RangeError on an empty buffer
    // while sniffing the JPEG marker. Other invalid payloads throw too.
    return null;
  }
}

/// Null when [logo] is missing or does not contain any byte values.
Uint8List? customerLogoBytes(String? logo) {
  if (logo == null) return null;
  final trimmed = logo.trim();
  if (trimmed.isEmpty || trimmed == 'null') return null;
  try {
    final bytes = convertListToInt(trimmed);
    if (bytes.isEmpty) return null;
    return bytes;
  } catch (_) {
    return null;
  }
}
