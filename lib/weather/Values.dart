class Values {
    double temperature;

    Values({this.temperature});

    factory Values.fromJson(Map<String, dynamic> json) {
        return Values(
            temperature: json['temperature'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['temperature'] = this.temperature;
        return data;
    }
}