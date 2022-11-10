import 'package:flutter/foundation.dart';

import '../../data/api_repository.dart';
import '../state/news_page_state.dart';

class NewsPageController extends ChangeNotifier {
  NewsPageState _state = NewsPageState.loading();
  NewsPageState get state => _state;

  Future<void> loadNews() async {
    var res = await apiRepository.getApiData(
        endpoint:
            'get-news-v3.php?authkey=w98dfx4t321sfef9872r54inp54er43rgj0987s');
    res.fold(
      (l) => _state = NewsPageState.error(l.msg),
      (r) => _state = NewsPageState.loaded(r),
    );
    notifyListeners();
  }
}
