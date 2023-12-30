import 'package:chat_monster/src/components/MonsterCard.dart';
import 'package:chat_monster/src/components/MyTextField.dart';
import 'package:flutter/material.dart';

class MonsterInventory extends StatefulWidget {
  const MonsterInventory({super.key});

  @override
  State<MonsterInventory> createState() => _MonsterInventoryState();
}

class _MonsterInventoryState extends State<MonsterInventory> {
  Widget build(BuildContext context) {
    final searchController = TextEditingController();

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 16,
              left: 32,
              right: 32,
            ),
            child: MyTextField(
              controller: searchController,
              name: "Search",
              hintText: "Search",
              prefixIcon: Icons.search,
              inputType: TextInputType.text,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Flexible(
              child: GridView.count(
                shrinkWrap: true,
                primary: true,
                physics: const ClampingScrollPhysics(),
                childAspectRatio: 3 / 4,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: const [
                  MonsterCard(image: 'images/orc.png', name: "Orc"),
                  MonsterCard(image: 'images/orc.png', name: "Orc 2"),
                  MonsterCard(image: 'images/orc.png', name: "Pig"),
                  MonsterCard(image: 'images/orc.png', name: "Dog"),
                  MonsterCard(image: 'images/orc.png', name: "Duck"),
                  MonsterCard(image: 'images/orc.png', name: "Duck 2"),
                  MonsterCard(image: 'images/orc.png', name: "Duck 3"),
                  MonsterCard(image: 'images/orc.png', name: "Duck 4"),
                  MonsterCard(image: 'images/orc.png', name: "Duck 4"),
                  MonsterCard(image: 'images/orc.png', name: "Duck 4"),
                  MonsterCard(image: 'images/orc.png', name: "Duck 4"),
                  MonsterCard(image: 'images/orc.png', name: "Duck 4"),
                  MonsterCard(image: 'images/orc.png', name: "Duck 4"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
