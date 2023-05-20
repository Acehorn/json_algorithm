# json_algorithm


it is just an algorithm you can use to delete elements with specify patterns like
"", "-" or "N/A", it could have improvements, for now you can use this examples to test it

    String jso2 = '''{
    "name": {"first": "As", "middle": "N\/A", "last": "N\/A"},
    "age": 25,
    "DOB": "-",
    "DAW": "",
    "RED": "N\/A",
    "WER" : "-",
    "hobbies": ["", "coding", "-"],
    "education": {"highschool": "N\/A", "college": ""}}''';

     String jso3 = '''{
    "name": {"first": "Javier", "middle": "Gutierrez", "last": "Gónzalez"},
    "age": 25,
    "DOB": "east",
    "hobbies": ["music", "coding", "internet"],
    "education": {"highschool": "hampton", "college": "harvard"}}''';


  You can test it in dartpad https://dartpad.dev/
