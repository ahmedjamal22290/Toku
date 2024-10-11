class recentData {
  String ogLangu, desLangu;
  recentData({required this.ogLangu, required this.desLangu}) {
    if (RecentlyData.length == 10) {
      RecentlyData.removeAt(9);
      RecentlyData.insert(0, Pair(ogLangu, desLangu));
    } else {
      RecentlyData.insert(0, Pair(ogLangu, desLangu));
    }
  }
}

class Pair<K, V> {
  K first;
  V second;

  Pair(this.first, this.second);
}

List<Pair<String, String>> RecentlyData = [];
