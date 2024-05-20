import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final String imagesPath;
  final String listTitle;
  final String listSubTitle;

  const ContainerWidget(
      {super.key,
      required this.imagesPath,
      required this.listTitle,
      required this.listSubTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffF7F3F0),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    listTitle,
                    style: const TextStyle(
                        fontFamily: 'Alegreya',
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                  Expanded(
                    child: Text(
                      listSubTitle,
                      style: const TextStyle(
                        fontFamily: 'Alegreya',
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF253334),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ) // Set the background color here
                        ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Watch Now",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            // image ----------------------
        
            Expanded(
              child: SizedBox(
                width: 100,
                child: Image.network(imagesPath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
