class Interval {
    String startTime;
    Values values;

    Interval({this.startTime, this.values});

    factory Interval.fromJson(Map<String, dynamic> json) {
        return Interval(
            startTime: json['startTime'], 
            values: json['values'] != null ? Values.fromJson(json['values']) : null, 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['startTime'] = this.startTime;
        if (this.values != null) {
            data['values'] = this.values.toJson();
        }
        return data;
    }
}