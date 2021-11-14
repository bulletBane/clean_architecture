import 'package:freezed_annotation/freezed_annotation.dart';

part 'clients.freezed.dart';

@freezed
class PlaceHolderClient with _$PlaceHolderClient {
  // ROTA TANIMLAMALARI
  const PlaceHolderClient._() : super();
  const factory PlaceHolderClient.words() = _Words;

  String get baseURL => "http://api.weatherapi.com/v1";

  Map<String, dynamic> get header => {
        "x-rapidapi-host": "wordsapiv1.p.rapidapi.com",
        "x-rapidapi-key": "2822a57b69msh5c61a89a1c34b9ap1ce683jsne87f97301546"
      };
  String get path {
    return when<String>(
      words: () => '/current.json',
    );
  }

  String get method {
    return maybeWhen<String>(
      orElse: () => 'GET', // AKSİ BELİRTİLMEDİKÇE İSTEKLER GET OLARAK GİDECEK.
    );
  }

  Map<String, dynamic>? get body {
    return maybeWhen(orElse: () {
      return null; // AKSİ BELİRTİLMEDİKÇE BODY NULL GİDECEK.
    });
  }

  Map<String, dynamic>? get queryParameters {
    return maybeWhen(
      words: () {
        return {
          'key': 'c45872872a044b8887d114112211411',
          'q': 'London',
          'aqi': 'no'
        };
      },
      orElse: () {
        return null; // AKSİ BELİRTİLMEDİKÇE QUERY NULL GİDECEK.
      },
    );
  }
}
