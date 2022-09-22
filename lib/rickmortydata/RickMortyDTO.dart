
class RickMorty {
    String? created;
    List<String?>? episode;
    String? gender;
    int? id;
    String? image;
    Location? location;
    String? name;
    Origin? origin;
    String? species;
    String? status;
    String? type;
    String? url;

    RickMorty({this.created, this.episode, this.gender, this.id, this.image, this.location, this.name, this.origin, this.species, this.status, this.type, this.url});

    factory RickMorty.fromJson(Map<String, dynamic> json) {
        return RickMorty(
            created: json['created'],
            episode: json['episode'] != null ? List<String>.from(json['episode']) : null,
            gender: json['gender'],
            id: json['id'],
            image: json['image'],
            location: json['location'] != null ? Location.fromJson(json['location']) : null,
            name: json['name'],
            origin: json['origin'] != null ? Origin.fromJson(json['origin']) : null,
            species: json['species'],
            status: json['status'],
            type: json['type'],
            url: json['url'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['created'] = created;
        data['gender'] = gender;
        data['id'] = id;
        data['image'] = image;
        data['name'] = name;
        data['species'] = species;
        data['status'] = status;
        data['type'] = type;
        data['url'] = url;
        if (episode != null) {
            data['episode'] = episode;
        }
        if (location != null) {
            data['location'] = toJson();
        }
        if (this.origin != null) {
            data['origin'] = origin?.toJson();
        }
        return data;
    }
}

class Origin {
    String? name;
    String? url;

    Origin({this.name, this.url});

    factory Origin.fromJson(Map<String, dynamic> json) {
        return Origin(
            name: json['name'],
            url: json['url'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['name'] = name;
        data['url'] = url;
        return data;
    }
}

class Location {
    String? name;
    String? url;

    Location({this.name, this.url});

    factory Location.fromJson(Map<String, dynamic> json) {
        return Location(
            name: json['name'],
            url: json['url'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = <String, dynamic>{};
        data['name'] = name;
        data['url'] = url;
        return data;
    }
}