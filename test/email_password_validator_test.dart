import 'package:flutter_test/flutter_test.dart';
import 'package:posts/login_page/login_page.dart';

void main(){
  test('check email is not empty ', (){
    var result = EmailFieldValidator.validate('osama@gmail.com');
    expect(result, null);
  });
  test('check email is empty', (){
    var result = EmailFieldValidator.validate('');
    expect(result, 'Email can\'t be empty');
  });

}