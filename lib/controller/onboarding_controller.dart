import 'package:get/get.dart';
import 'package:todo/model/onboarding_model.dart';

class OnBoardingController extends GetxController{
  List<OnBoardingModel> _onBoardingList = [];
  List<OnBoardingModel> get onBoardingList => _onBoardingList;

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  changeSelectIndex(int index) {
    _selectedIndex = index;
    notifyChildrens();
  }

}