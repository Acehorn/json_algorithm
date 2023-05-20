import 'dart:convert';
void main() {
  String jso = '''{
    "name": {"first": "", "middle": "east", "last": "N\/A"},
    "age": 25,
    "DOB": "-",
    "hobbies": ["running", "coding", "-"],
    "education": {"highschool": "N\/A", "college": "Yale"}
  }''';
  
    String jso2 = '''{
    "name": {"first": "As", "middle": "N\/A", "last": "N\/A"},
    "age": 25,
    "DOB": "-",
    "DAW": "",
    "RED": "N\/A",
    "WER" : "-",
    "hobbies": ["", "coding", "-"],
    "education": {"highschool": "N\/A", "college": ""}
  }''';

     String jso3 = '''{
    "name": {"first": "Javier", "middle": "Gutierrez", "last": "Gónzalez"},
    "age": 25,
    "DOB": "east",
    "hobbies": ["music", "coding", "internet"],
    "education": {"highschool": "hampton", "college": "harvard"}
  }''';
  String newJson = deleteJsonElement(jso2);
  print(newJson);
}

String deleteJsonElement(String jsonString) {
  Map<String, dynamic> json = jsonDecode(jsonString);

  deleteElementFromJson(json);

  return jsonEncode(json);
}

 deleteElementFromJson(dynamic value) {
  if (value is Map) {
    Map<dynamic, dynamic> map = value;
    map.removeWhere((key, value) =>
        value == "" || value == "-" || value == "N\/A");
    map.forEach((key, value) {
      deleteElementFromJson(value);
    });
  } else if (value is List) {
    List<dynamic> list = value;
    list.removeWhere((element) =>
        element == "" || element == "-" || element == "N\/A");

    for (int i = 0; i < list.length; i++) {
      dynamic element = list[i];
      if (element is Map || element is List) {
        deleteElementFromJson(element);
      }
    }
  }
}