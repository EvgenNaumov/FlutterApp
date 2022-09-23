import 'dart:developer';

class Data {
    List<Timeline> timelines;

    Data({required this.timelines});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            timelines: json['timelines'] != null ? (json['timelines'] as List).map((i) => Timeline.fromJson(i)).toList() : null
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        if (timelines != null) {
            data['timelines'] = timelines.map((v) => v.toJson()).toList();
        }
        return data;
    }
}