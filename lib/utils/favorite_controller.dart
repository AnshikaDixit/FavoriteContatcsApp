import 'package:get/get.dart';

class FavoriteController extends GetxController {
  RxList<String> nameList = [
    'Anshika',
    'Shreya',
    'Aakrati',
    'Riya',
    'Awadhi',
    'Tiya',
    'Iti',
    'Gungun',
    'Arnav',
    'Ayu'
  ].obs;
  RxList favList = [].obs;

  addtoFavorite(String value) {
    favList.add(value);
  }

  removefromFavorite(String value) {
    favList.remove(value);
  }
}
