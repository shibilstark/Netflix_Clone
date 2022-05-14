import 'package:netflix/core/strings.dart';
import 'package:netflix/infrastructure/api_key.dart';

class ApiEndPoits {
  static const downloads = "${baseUrl}/trending/movie/week?api_key=${API_KEY}";
}
