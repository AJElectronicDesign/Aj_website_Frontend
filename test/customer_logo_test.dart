import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:guadalajarav2/views/Quotes/PDFWidgets/customer_logo.dart';
import 'package:pdf/widgets.dart' as pw;

/// 1x1 PNG, the same decimal-list form stored by Add Customer
/// (`selectedImageInBytes.toString()`).
const _pngBytes = <int>[
  137, 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0, 1, 0, 0,
  0, 1, 8, 6, 0, 0, 0, 31, 21, 196, 137, 0, 0, 0, 13, 73, 68, 65, 84, 120, 218,
  99, 252, 207, 192, 80, 15, 0, 4, 133, 1, 128, 132, 169, 140, 33, 0, 0, 0, 0,
  73, 69, 78, 68, 174, 66, 96, 130,
];

void main() {
  test('empty logo bytes are what MemoryImage rejects with RangeError 0', () {
    // image 4.3 indexes byte 0 while sniffing a JPEG marker. Older Dart
    // reports "no indices are valid: 0"; newer Dart reports an empty range.
    expect(
      () => pw.MemoryImage(Uint8List(0)),
      throwsA(
        isA<RangeError>().having(
          (error) => error.toString(),
          'message',
          anyOf(
            contains('no indices are valid: 0'),
            contains('Valid value range is empty: 0'),
          ),
        ),
      ),
    );
  });

  test('missing or undecodable customer logos are omitted', () {
    expect(customerLogoImage(null), isNull);
    expect(customerLogoImage(''), isNull);
    expect(customerLogoImage('   '), isNull);
    expect(customerLogoImage('null'), isNull);
    expect(customerLogoImage('[]'), isNull);
    expect(customerLogoImage('[1, 2, 3, 4]'), isNull);
    expect(customerLogoImage('[999]'), isNull);
  });

  test('a stored PNG logo is kept', () {
    final stored = Uint8List.fromList(_pngBytes).toString();
    final image = customerLogoImage(stored);

    expect(image, isNotNull);
    expect(image!.width, 1);
    expect(image.height, 1);
  });

  test('quote page saves with company name when the logo is absent', () async {
    final logo = customerLogoImage('null');
    final bytes = await _quotePage(logo, 'Kenko');

    expect(logo, isNull);
    expect(bytes, isNotEmpty);
    expect(String.fromCharCodes(bytes), contains('Kenko'));
    expect(String.fromCharCodes(bytes), isNot(contains('/Subtype/Image')));
  });

  test('quote page saves and embeds a valid logo', () async {
    final stored = Uint8List.fromList(_pngBytes).toString();
    final logo = customerLogoImage(stored);
    final bytes = await _quotePage(logo, 'Acme');
    final pdf = String.fromCharCodes(bytes);

    expect(bytes, isNotEmpty);
    expect(pdf, contains('Acme'));
    expect(pdf, contains('/Subtype/Image'));
  });
}

Future<Uint8List> _quotePage(pw.MemoryImage? logo, String company) async {
  final pdf = pw.Document(compress: false);
  pdf.addPage(
    pw.Page(
      build: (context) => pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.end,
        children: [
          if (logo != null) ...[
            pw.Image(logo, height: 50),
            pw.SizedBox(height: 10),
          ],
          pw.Text('Company: $company'),
        ],
      ),
    ),
  );
  return pdf.save();
}
