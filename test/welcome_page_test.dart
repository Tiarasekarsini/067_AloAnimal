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
    expect(richTextWidgets.length, 1);

// Ambil widget pertama dari daftar (karena kita tahu hanya ada satu)
    final richTextWidget = richTextWidgets.first as RichText;

// Sekarang dapatkan dan verifikasi teks
    final richTextText = richTextWidget.text.toPlainText();
    expect(richTextText, 'Helping you\nto get to know your pet better');
  });
}
