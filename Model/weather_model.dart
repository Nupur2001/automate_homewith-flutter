// ignore_for_file: non_constant_identifier_names

class Weather{
  String?cityName;
  double? temp;
  double? wind;
  int?humidity;
  double?feels_like;
  int?pressure;

  Weather(
    {
      this.cityName,
      this.temp,
      this.wind,
      this.humidity,
      this.feels_like,
      this.pressure
    }
  );

  // Now let's build a function to parse the JSON file into the model
  Weather.fromJson(Map<String,dynamic>json){
    cityName=json["name"];
    temp=json["main"]["temp"];
    wind=json["wind"]["speed"];
    humidity=json["main"]["humidity"];
    pressure=json["main"]["pressure"];
    feels_like=json["main"]["feels_like"];
  }
}