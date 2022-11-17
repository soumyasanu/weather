import 'package:http/http.dart';
import 'dart:convert';

class worker {
  String location = "";
  //constructor
  worker(this.location) {
    location = this.location;
  }

  String temp = "";
  String humidity = "";
  String air_speed = "";
  String description = "";
  String main = "";

  //method  =
  Future<void> getData() async {
    Response response = await get(
        "http://api.openweathermap.org/data/2.5/weather?q=Indore&appid=e34a5eb0b4c5ff748fdf9219a63d224e");
    Map data = jsonDecode(response.body);

    List weather_data = data['weather'];
    Map weather_main_data = weather_data[0];

    Map temp_data = data['main'];
    double getTemp = temp_data['temp'];

    String getHumidity = temp_data['humidity'].toString();

    Map wind = data['wind'];
    int getAir_speed = wind['speed'];

    String getMain_des = weather_main_data['main'];
    String getDesc = weather_main_data["descripption"];

    //Assinging values
    temp = getTemp.toString();
    humidity = getHumidity;
    air_speed = getAir_speed.toString();
    description = getDesc;
    main = getMain_des;
  }
}
