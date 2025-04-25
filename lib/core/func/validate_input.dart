import 'package:get/get_utils/src/get_utils/get_utils.dart';

validateInput({
  required String value,
  required int minValue,
  required int maxValue,
  required String valueType,
}) {
  if (valueType == 'username') {
    if (!GetUtils.isUsername(value)) {
      return 'Not Valid User Name';
    }
  }
  if (valueType == 'email') {
    if (!GetUtils.isEmail(value)) {
      return 'Not Valid User Email';
    }
  }
  if (valueType == 'phone') {
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Not Valid User Name';
    }
  }

  if(value.isEmpty){
    return 'Please Fill Empty Input Field';
  }
  if(value.length < minValue){
    return 'Value Cannot Be Less than $minValue';
  }
  if(value.length > maxValue){
    return 'Value Cannot Be Longer than $maxValue';
  }
}
