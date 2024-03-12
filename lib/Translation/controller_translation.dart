import 'package:get/get.dart';

class Messeges extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'Name': 'Flutter is owesome',
      'title': ' It is a Framework',
    },
    'fr_fr': {
      'Name': 'Bonjour le monde',
      'title': 'Développeur Flutter',

    }
  };
}