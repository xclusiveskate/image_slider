import 'package:flutter/material.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  var a = 0;
  imageSwitcher(String switcher) {
    if (switcher == "-") {
      if (a == 0) {
        setState(() {
          a = 4;
        });
      } else {
        setState(() {
          a -= 1;
        });
      }
    } else {
      if (a == images.length - 1) {
        setState(() {
          a = 0;
        });
      } else {
        setState(() {
          a += 1;
        });
      }
    }
    return a;
  }

  @override
  Widget build(BuildContext context) {
    // var view = images[a];
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Slider"),
        ),
        body: Center(
          child: Row(
            children: [
              GestureDetector(
                onTap: () => imageSwitcher("+"),
                child: const Icon(Icons.arrow_back),
              ),
              Container(
                  color: Colors.blue,
                  width: 330,
                  height: 330,
                  alignment: Alignment.center,
                  child: Image.network(
                    images[a],
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  )),
              GestureDetector(
                onTap: () => imageSwitcher("+"),
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ));
  }
}

List images = [
  "https://bit.ly/3TExPFM",
  "https://bit.ly/3GiaOVS",
  "https://bit.ly/3AfaGTe",
  "https://bit.ly/3E8OOdE",
  "https://bit.ly/3g1gWYd"
];
