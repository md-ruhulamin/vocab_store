import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_meaning/sqflite/sqflite_controller.dart';

class WordList extends StatelessWidget {
  final SqfliteWordController controller = Get.put(SqfliteWordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word List'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: controller.map.length,
            itemBuilder: (context, index) {
              final word = controller.map.values.toList()[index];
              return ListTile(
                title: Text(word.word),
                subtitle: Text('${word.meaning} - ${word.sentence}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Implement your edit logic here
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        controller.deleteWord(word.id);
                      },
                    ),
                  ],
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement your add word logic here
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class WordList1 extends StatelessWidget {
  final SqfliteWordController controller = Get.put(SqfliteWordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word List'),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller.wordController,
            decoration: InputDecoration(labelText: 'Word'),
          ),
          TextField(
            controller: controller.meaningController,
            decoration: InputDecoration(labelText: 'Meaning'),
          ),
          TextField(
            controller: controller.sentenceController,
            decoration: InputDecoration(labelText: 'Sentence'),
          ),
          ElevatedButton(
            onPressed: () {
              controller.addWord;
              Get.to(WordList());
            },
            child: Text('Add Word'),
          ),
          // ... rest of your list view
        ],
      ),
    );
  }
}
