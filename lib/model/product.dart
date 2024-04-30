class Product{
  final String id;
  final String name;
  final double price;
  final String imgPath;
  final String modelPath;

  const Product({
      required this.id,
      required this.name,
    required this.imgPath,
    required this.modelPath,
    required this.price
    });

  static const  products ={
    Product(id: 'product_1', name: 'Shape1', imgPath: 'assets/images/house-png.png', modelPath: 'assets/gltf/house-gltf.gltf', price: 500),
    Product(id: 'product_2', name: 'Shape2', imgPath: 'assets/images/redbull-png.png', modelPath: 'assets/gltf/redbull-gltf.gltf', price: 500),
    Product(id: 'product_3', name: 'Shape3', imgPath: 'assets/images/sofa-png.png', modelPath: 'assets/gltf/sofa-gltf.gltf', price: 500)
  };
}