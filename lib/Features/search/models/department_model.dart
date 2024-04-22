class DepartmentModel {
  int id;
  String title;
  String imgLink;

  DepartmentModel(
      {required this.id, required this.title, required this.imgLink});

  factory DepartmentModel.fromJson(data) {
    if (data != null) {
      return DepartmentModel(
          id: data['id'], title: data['title'], imgLink: data['imgLink']);
    } else {
      throw "no data to get";
    }
  }
}
