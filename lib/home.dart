import 'package:c/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<ListProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("List")),
      ),
      body: Expanded(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: pro.textcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    pro.adddatas();
                  },
                  child: const Text("press")),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: pro.data.length,
                  itemBuilder: (context, index) {
                    final data = pro.data[index];
                    return Card(
                      child: ListTile(
                        title: Text(data),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void add() {}
}
