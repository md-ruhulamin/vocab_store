import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/features/take_collectionaname/controllers/collection_controller.dart';
import 'package:word_meaning/homepage.dart';

class TakeCollection extends StatefulWidget {
  const TakeCollection({super.key});

  @override
  State<TakeCollection> createState() => _TakeCollectionState();
}

class _TakeCollectionState extends State<TakeCollection> {
  late CollectionController collectionController;
  @override
  void initState() {
    super.initState();
    collectionController = Get.put(CollectionController());
  
  }

  TextEditingController collectionControllerTextEditor =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    print("Collection name");

    print(collectionController.collectionName);
    return collectionController.collectionName.isNotEmpty
        ? HomePage()
        : Scaffold(
            body: SafeArea(
                child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      maxLines: 1,
                      controller: collectionControllerTextEditor,
                      decoration: const InputDecoration(
                        label: Text("Enter Your Collection Name"),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 42.0),
                        child: Text(
                          'Save Collection Name',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              ),
                        ),
                      ),
                      onPressed: () {
                        collectionController.saveCollectionName(
                            collectionControllerTextEditor.text);
                        print(collectionController.collectionName);
                      },
                    )
                  ],
                ),
              ),
            )),
          );
  }
}
