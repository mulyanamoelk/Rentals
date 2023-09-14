// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductModel {
  final int id;
  final String title;
  final String img;
  final String description;
  final int price;
  final int discount;
  ProductModel({
    required this.id,
    required this.title,
    required this.img,
    required this.description,
    required this.price,
    required this.discount,
  });
}

final List<ProductModel> listProduct = [
  ProductModel(
      id: 1,
      title: "Camera Sony",
      img: "assets/images/camera.jpg",
      description: "Camera sony dengan berbagai kelebihan ",
      price: 10000000,
      discount: 5),
  ProductModel(
      id: 2,
      title: "Drone",
      img: "assets/images/drone.jpg",
      description: "Dronedengan berbagai kelebihan ",
      price: 10000000,
      discount: 5),
  ProductModel(
      id: 3,
      title: "Mouse",
      img: "assets/images/mouse.jpg",
      description: " Mouse dengan berbagai kelebihan ",
      price: 10000000,
      discount: 5),
  ProductModel(
      id: 4,
      title: "Gimbal",
      img: "assets/images/gimbal.jpg",
      description: "Gimbal dengan berbagai kelebihan ",
      price: 10000000,
      discount: 5),
  ProductModel(
      id: 5,
      title: "Mic",
      img: "assets/images/mic.jpg",
      description: "Mic dengan berbagai kelebihan ",
      price: 10000000,
      discount: 5),
  ProductModel(
      id: 6,
      title: "HF",
      img: "assets/images/hf.jpg",
      description: "HF dengan berbagai kelebihan ",
      price: 250000,
      discount: 5),
  ProductModel(
      id: 7,
      title: "HF Terbaru",
      img: "assets/images/hf2.jpg",
      description: "HF New dengan berbagai kelebihan ",
      price: 400000,
      discount: 5),
  ProductModel(
      id: 7,
      title: "Jam",
      img: "assets/images/jam.jpg",
      description: "Jam dengan berbagai kelebihan ",
      price: 500000,
      discount: 5),
  ProductModel(
      id: 7,
      title: "Monitor",
      img: "assets/images/monitor.jpg",
      description: "Monitor dengan berbagai kelebihan ",
      price: 12000000,
      discount: 5),
];
