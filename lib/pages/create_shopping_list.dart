import 'package:material_ui/material_ui.dart';
import 'package:shopping_list_app/widgets/custom_app_bar.dart';


class CreateShoppingList extends StatelessWidget {
  const CreateShoppingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Center(child: Text('sfs')),
    );
  }
}