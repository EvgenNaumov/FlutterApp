import 'Data.dart';

class weather {
    Data data;

    weather({required this.data});

    factory weather.fromJson(Map<String, dynamic> json) {
        return weather(
            data: json['data'] != null ? data.fromJson(json['data']) : null
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.data != null) {
            data['`data`'] = this.data.toJson();
        }
        return data;
    }
}