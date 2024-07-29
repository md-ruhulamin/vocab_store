// ignore_for_file: unnecessary_string_interpolations

import 'package:get/get.dart';
import 'package:word_meaning/features/default_word/screen/default_word_list.dart';
import 'package:word_meaning/features/idom_phrase/screen/idom_list.dart';
import 'package:word_meaning/features/my_dictionary/screen/my_word_list.dart';
import 'package:word_meaning/features/search_meaning/screen/search_meaning_view.dart';
import 'package:word_meaning/features/search_word/screen/search_word.dart';
import 'package:word_meaning/homepage.dart';
import 'package:word_meaning/features/add_word_to_dictionary/screen/addword.dart';
import 'package:word_meaning/features/idom_phrase/screen/idom_flip_card.dart';
import 'package:word_meaning/features/my_dictionary/screen/mydictonaryscreen.dart';
import 'package:word_meaning/features/default_word/screen/word_flip_card.dart';

class RouteHelper {
  static const String initial = "/";
  static String getInitial() => '$initial';

  static const String defaultwordpage = "/word-page";
  static String getDefaultWordPage() => '$defaultwordpage';

  static const String mywordpage = "/my-word-page";
  static String getMyWordPage() => '$mywordpage';

  static const String idompage = "/idom-page";
  static String getIdomPage() => '$idompage';

  static const String addnewword = "/add-word";
  static String getAddNewWordPage() => '$addnewword';

    static const String searchmeaning = "/search-meaning";
  static String getSearchMeaningOnline() => '$searchmeaning';

static const String searchword = "/search-word";
  static String getSearchingWordfromMYDict() => '$searchword';

  // static const String recommendedFood = "/recommended-food";
  // static const String cartPage = "/cart-page";

  // static String getPopularFood(int pageId, String page) =>
  //     '$popularFood?pageId=$pageId&page=$page';
  // static String getRecommendedFood(int pageId, String page) =>
  //     '$recommendedFood?pageId=$pageId&page=$page';

  // static String getCartPage() => '$cartPage';

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => const HomePage()),
    GetPage(name: defaultwordpage, page: () => WordList()),
    GetPage(name: idompage, page: () => const IdomList()),
    GetPage(name: mywordpage, page: () => MyWordList()),
    GetPage(name: addnewword, page: () => const AddNewWord()),
    GetPage(name: searchmeaning, page: () => DictionaryScreen()),
    GetPage(name: searchword, page: () => WordSearchScreen()),

    // GetPage(
    //   name: popularFood,
    //   page: () {
    //     var pageId = Get.parameters['pageId'];
    //     var page = Get.parameters['page'];
    //     return PopularFoodDetail(pageId: int.parse(pageId!), page: page!);
    //   },
    //   transition: Transition.fadeIn,
    // ),
    // GetPage(
    //   name: recommendedFood,
    //   page: () {
    //     var pageId = Get.parameters['pageId'];
    //     var page = Get.parameters['page'];
    //     return RecommendedFoodDetail(pageId: int.parse(pageId!), page: page!);
    //   },
    //   transition: Transition.fadeIn,
    // ),
    // GetPage(
    //   name: cartPage,
    //   page: () {
    //     return const CartPage();
    //   },
    //   transition: Transition.fadeIn,
    // )
  ];
}
