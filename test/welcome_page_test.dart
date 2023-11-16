import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aloanimal/view/welcome_page.dart';

void main() {
  testWidgets('WelcomePage UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: const WelcomePage(),
      ),
    );

    // Your existing test code
    expect(find.byType(Image), findsNWidgets(2));

    final richTextFinder = find.descendant(
      of: find.byType(Stack),
      matching: find.byType(RichText),
    );

// Ganti dengan findAll dan periksa jumlah widget
    final richTextWidgets = tester.widgetList(richTextFinder);
    expect(richTextWidgets.length, 3);

// Iterasi melalui daftar widget dan verifikasi teks pada setiap widget
    for (final richTextWidget in richTextWidgets) {
      final richTextText = (richTextWidget as RichText).text.toPlainText();
      if (richTextText == 'Helping you\nto get to know your pet better') {
        // Jika teks sesuai, tes berhasil
        return;
      }
    }

// Jika loop selesai tanpa menemukan teks yang sesuai, lempar error
    fail('RichText widget with expected text not found');
  });
}
