class Timeline {
    String endTime;
    List<Interval> intervals;
    String startTime;
    String timestep;

    Timeline({this.endTime, this.intervals, this.startTime, this.timestep});

    factory Timeline.fromJson(Map<String, dynamic> json) {
        return Timeline(
            endTime: json['endTime'], 
            intervals: json['intervals'] != null ? (json['intervals'] as List).map((i) => Interval.fromJson(i)).toList() : null, 
            startTime: json['startTime'], 
            timestep: json['timestep'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['endTime'] = this.endTime;
        data['startTime'] = this.startTime;
        data['timestep'] = this.timestep;
        if (this.intervals != null) {
            data['intervals'] = this.intervals.map((v) => v.toJson()).toList();
        }
        return data;
    }
}