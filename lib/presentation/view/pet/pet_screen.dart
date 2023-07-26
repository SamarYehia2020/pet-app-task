import 'package:flutter/material.dart';
import 'package:pit_app/presentation/view/pet/vm/pet_vm.dart';
import 'package:pit_app/presentation/view/pet/widget/pet_cell.dart';
import 'package:pit_app/presentation/view/pet/widget/search_widget.dart';

class PetScreen extends StatelessWidget {
  PetScreen({Key? key}) : super(key: key);
  PetVM vm = PetVM();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Pet Market', style: TextStyle(fontSize: 30, color: Theme.of(context).colorScheme.onPrimary)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        child: Column(
          children: [
            const SearchWidget(),
            const SizedBox(height: 15),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15),
                color: Theme.of(context).colorScheme.primary.withOpacity(.5),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: vm.dataLength(),
                  itemBuilder: (BuildContext context, int index) {
                    return PetCell(
                      image: vm.getPic(index),
                      category: vm.getCategory(index),
                      type: vm.getType(index),
                      count: vm.getLoveCount(index),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
