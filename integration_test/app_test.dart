import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:posts/main.dart' as app;

void main(){
  group('App Test', (){
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('full app test', (tester)async{
      app.main();
      await tester.pumpAndSettle();
      final emailFormField = find.byType(TextFormField).first;
      //final emailFormField = find.byKey(Key('email'));
      final passwordFormField = find.byType(TextFormField).last;
      final loginButton = find.byType(MaterialButton).last;

      await tester.enterText(emailFormField,'osama@mohamed@gmail.com');
      await tester.enterText(passwordFormField,'123456');
      await tester.pumpAndSettle();

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

    });
  });
}