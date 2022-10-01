class InsideHome {
  final int id;
  final String name;

  InsideHome(this.id, this.name);

    Map<String, dynamic> toMap() {
    return {
    'id' : id,
   'name' : name
    };
  }
}
