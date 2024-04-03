class productModel{

  String id;
  String name;
  String description;
  List<String>images;
  String brand;
  double price;

  productModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.brand

});

static productModel empty()=>productModel(id: '', name: '', description: '', price: 0, images: [], brand: '');

Map <String,dynamic> toJson(){

  return{
    "ID":id,
    "Name":name,
    "Description":description,
    "Images":images,
    "Brand":brand,
    // "Price":price

  };

}

}