import '../models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

//1
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Innovations";
  categoryModel.image =
      "https://images.unsplash.com/photo-1485827404703-89b55fcc595e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  category.add(categoryModel);

//2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Scholarships";
  categoryModel.image =
      "https://media.istockphoto.com/photos/scholarship-graduation-cap-on-cash-picture-id806261494";
  category.add(categoryModel);

//3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Events";
  categoryModel.image =
      "https://images.pexels.com/photos/2263436/pexels-photo-2263436.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  category.add(categoryModel);

//4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Internships";
  categoryModel.image =
      "https://media.istockphoto.com/photos/-picture-id1043738352";
  category.add(categoryModel);

//5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "FellowShips";
  categoryModel.image =
      "https://media.istockphoto.com/photos/group-of-diversity-people-volunteer-charity-project-picture-id873780612";
  category.add(categoryModel);

//6
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.image =
      "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  category.add(categoryModel);

  return category;
}
