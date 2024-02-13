class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      image: "assets/images/logo.png",
      title: "Delivery",
      description: "Pick your food our menu\n More thats 25 mins"),
  UnboardingContent(
      image: "assets/images/logo.png",
      title: "Easy and online Payment",
      description:
          "Sed ut perspiciatis unde omnis iste natus error sit voluptatem "),
  UnboardingContent(
      image: "assets/images/logo.png",
      title: "Delivery",
      description:
          "Pick your food our menu\n More thats 25 mins Sed ut perspiciatis unde doloremque"),
];
