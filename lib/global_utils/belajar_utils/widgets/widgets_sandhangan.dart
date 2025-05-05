import 'package:caraka/global_utils/info_utils/lang/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Sandhangan extends StatelessWidget {
  final String image;
  final String name;
  final Color color;
  final String title;
  final String description;

  const Sandhangan(
      {required this.name,
      required this.image,
      required this.color,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    final penerjemah = context.watch<AppLocalization>();
    precacheImage(AssetImage(image), context);

    void navigateDialog(BuildContext context) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                shadowColor: color,
                surfaceTintColor: Colors.white,
                title: Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                content: Container(
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 100, width: 100, child: Image.asset(image)),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        description,
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      penerjemah.translate('tombolback'),
                      style: TextStyle(color: Colors.white),
                    ),
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  )
                ],
              ));
    }

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 16),
      child: GestureDetector(
        onTap: () => navigateDialog(context),
        child: Container(
          height: 88,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12.0),
                child: Image.asset(image),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Text(
                  name,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () => navigateDialog(context),
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                spreadRadius: 0,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
