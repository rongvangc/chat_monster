import 'package:chat_monster/src/components/InventoryItem.dart';
import 'package:chat_monster/src/components/MonsterInventory.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showInventory = false;
  double _height = 0;
  final List<String> messages = <String>[];
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(messages[index]);
              },
            ),
          ),
          Container(
            color: Theme.of(context).secondaryHeaderColor,
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    setState(() {
                      showInventory = !showInventory;
                      _height = showInventory ? 150 : 0;
                    });
                  },
                  icon: Image.asset(
                    'images/inventory.png',
                    width: 30.0,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: TextField(
                      controller: controller,
                      textInputAction: TextInputAction.done,
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 8.0,
                        ),
                        border: InputBorder.none,
                        hintText: 'Aa',
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    if (controller.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Error!'),
                          backgroundColor: Colors.red,
                        ),
                      );

                      return;
                    }

                    setState(() {
                      messages.insert(0, controller.text);
                    });

                    controller.clear();
                  },
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
            height: _height,
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 3,
              children: [
                InventoryItem(
                  text: 'Monsters',
                  icon: 'images/dead.png',
                  color: const Color(0xffE98259),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const MonsterInventory();
                      },
                    );
                  },
                ),
                InventoryItem(
                  text: 'Spellbook',
                  icon: 'images/spellbook.png',
                  color: const Color(0xff2D3055),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const MonsterInventory();
                      },
                    );
                  },
                ),
                InventoryItem(
                  text: 'Potions',
                  icon: 'images/potions.png',
                  color: const Color(0xffe63946),
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const MonsterInventory();
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
