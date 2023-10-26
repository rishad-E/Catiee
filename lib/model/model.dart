// To parse this JSON data, do
//
//     final responseModel = responseModelFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<ResponseModel> responseModelFromJson(String str) => List<ResponseModel>.from(json.decode(str).map((x) => ResponseModel.fromJson(x)));

String responseModelToJson(List<ResponseModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResponseModel {
    List<Breed>? breeds;
    String? id;
    String? url;
    int? width;
    int? height;

    ResponseModel({
        this.breeds,
        this.id,
        this.url,
        this.width,
        this.height,
    });

    factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
        breeds: json["breeds"] == null ? [] : List<Breed>.from(json["breeds"]!.map((x) => Breed.fromJson(x))),
        id: json["id"],
        url: json["url"],
        width: json["width"],
        height: json["height"],
    );

    Map<String, dynamic> toJson() => {
        "breeds": breeds == null ? [] : List<dynamic>.from(breeds!.map((x) => x.toJson())),
        "id": id,
        "url": url,
        "width": width,
        "height": height,
    };
}

class Breed {
    Id? id;
    String? name;
    String? cfaUrl;
    String? vetstreetUrl;
    String? vcahospitalsUrl;
    Temperament? temperament;
    Origin? origin;
    CountryCode? countryCodes;
    CountryCode? countryCode;
    String? description;
    LifeSpan? lifeSpan;
    int? indoor;
    int? lap;
    int? adaptability;
    int? affectionLevel;
    int? childFriendly;
    int? catFriendly;
    int? dogFriendly;
    int? energyLevel;
    int? grooming;
    int? healthIssues;
    int? intelligence;
    int? sheddingLevel;
    int? socialNeeds;
    int? strangerFriendly;
    int? vocalisation;
    int? bidability;
    int? experimental;
    int? hairless;
    int? natural;
    int? rare;
    int? rex;
    int? suppressedTail;
    int? shortLegs;
    String? wikipediaUrl;
    int? hypoallergenic;
    ReferenceImageId? referenceImageId;
    Weight? weight;

    Breed({
        this.id,
        this.name,
        this.cfaUrl,
        this.vetstreetUrl,
        this.vcahospitalsUrl,
        this.temperament,
        this.origin,
        this.countryCodes,
        this.countryCode,
        this.description,
        this.lifeSpan,
        this.indoor,
        this.lap,
        this.adaptability,
        this.affectionLevel,
        this.childFriendly,
        this.catFriendly,
        this.dogFriendly,
        this.energyLevel,
        this.grooming,
        this.healthIssues,
        this.intelligence,
        this.sheddingLevel,
        this.socialNeeds,
        this.strangerFriendly,
        this.vocalisation,
        this.bidability,
        this.experimental,
        this.hairless,
        this.natural,
        this.rare,
        this.rex,
        this.suppressedTail,
        this.shortLegs,
        this.wikipediaUrl,
        this.hypoallergenic,
        this.referenceImageId,
        this.weight,
    });

    factory Breed.fromJson(Map<String, dynamic> json) => Breed(
        id: idValues.map[json["id"]]!,
        name: json["name"]!,
        cfaUrl: json["cfa_url"],
        vetstreetUrl: json["vetstreet_url"],
        vcahospitalsUrl: json["vcahospitals_url"],
        temperament: temperamentValues.map[json["temperament"]]!,
        origin: originValues.map[json["origin"]]!,
        countryCodes: countryCodeValues.map[json["country_codes"]]!,
        countryCode: countryCodeValues.map[json["country_code"]]!,
        description: json["description"],
        lifeSpan: lifeSpanValues.map[json["life_span"]]!,
        indoor: json["indoor"],
        lap: json["lap"],
        adaptability: json["adaptability"],
        affectionLevel: json["affection_level"],
        childFriendly: json["child_friendly"],
        catFriendly: json["cat_friendly"],
        dogFriendly: json["dog_friendly"],
        energyLevel: json["energy_level"],
        grooming: json["grooming"],
        healthIssues: json["health_issues"],
        intelligence: json["intelligence"],
        sheddingLevel: json["shedding_level"],
        socialNeeds: json["social_needs"],
        strangerFriendly: json["stranger_friendly"],
        vocalisation: json["vocalisation"],
        bidability: json["bidability"],
        experimental: json["experimental"],
        hairless: json["hairless"],
        natural: json["natural"],
        rare: json["rare"],
        rex: json["rex"],
        suppressedTail: json["suppressed_tail"],
        shortLegs: json["short_legs"],
        wikipediaUrl: json["wikipedia_url"],
        hypoallergenic: json["hypoallergenic"],
        referenceImageId: referenceImageIdValues.map[json["reference_image_id"]]!,
        weight: json["weight"] == null ? null : Weight.fromJson(json["weight"]),
    );

    Map<String, dynamic> toJson() => {
        "id": idValues.reverse[id],
        "name": nameValues.reverse[name],
        "cfa_url": cfaUrl,
        "vetstreet_url": vetstreetUrl,
        "vcahospitals_url": vcahospitalsUrl,
        "temperament": temperamentValues.reverse[temperament],
        "origin": originValues.reverse[origin],
        "country_codes": countryCodeValues.reverse[countryCodes],
        "country_code": countryCodeValues.reverse[countryCode],
        "description": description,
        "life_span": lifeSpanValues.reverse[lifeSpan],
        "indoor": indoor,
        "lap": lap,
        "adaptability": adaptability,
        "affection_level": affectionLevel,
        "child_friendly": childFriendly,
        "cat_friendly": catFriendly,
        "dog_friendly": dogFriendly,
        "energy_level": energyLevel,
        "grooming": grooming,
        "health_issues": healthIssues,
        "intelligence": intelligence,
        "shedding_level": sheddingLevel,
        "social_needs": socialNeeds,
        "stranger_friendly": strangerFriendly,
        "vocalisation": vocalisation,
        "bidability": bidability,
        "experimental": experimental,
        "hairless": hairless,
        "natural": natural,
        "rare": rare,
        "rex": rex,
        "suppressed_tail": suppressedTail,
        "short_legs": shortLegs,
        "wikipedia_url": wikipediaUrl,
        "hypoallergenic": hypoallergenic,
        "reference_image_id": referenceImageIdValues.reverse[referenceImageId],
        "weight": weight?.toJson(),
    };
}

enum CountryCode {
    US
}

final countryCodeValues = EnumValues({
    "US": CountryCode.US
});

enum Id {
    BENG
}

final idValues = EnumValues({
    "beng": Id.BENG
});

enum LifeSpan {
    THE_1215
}

final lifeSpanValues = EnumValues({
    "12 - 15": LifeSpan.THE_1215
});

enum Name {
    BENGAL
}

final nameValues = EnumValues({
    "Bengal": Name.BENGAL
});

enum Origin {
    UNITED_STATES
}

final originValues = EnumValues({
    "United States": Origin.UNITED_STATES
});

enum ReferenceImageId {
    O3_BTZ_LLS_O
}

final referenceImageIdValues = EnumValues({
    "O3btzLlsO": ReferenceImageId.O3_BTZ_LLS_O
});

enum Temperament {
    ALERT_AGILE_ENERGETIC_DEMANDING_INTELLIGENT
}

final temperamentValues = EnumValues({
    "Alert, Agile, Energetic, Demanding, Intelligent": Temperament.ALERT_AGILE_ENERGETIC_DEMANDING_INTELLIGENT
});

class Weight {
    String? imperial;
    String? metric;

    Weight({
        this.imperial,
        this.metric,
    });

    factory Weight.fromJson(Map<String, dynamic> json) => Weight(
        imperial: json["imperial"],
        metric: json["metric"],
    );

    Map<String, dynamic> toJson() => {
        "imperial": imperial,
        "metric": metric,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}

