
import 'package:flutter/material.dart';
import 'package:texnomart_clone_flutter/data/model/category/all_categories_model.dart';
import 'package:texnomart_clone_flutter/ui/products_screen.dart';

class ChildCategoryScreen extends StatelessWidget {
  final String categoryName;
  final List<AllCategoriesItemChild> list;

  const ChildCategoryScreen({super.key, required this.categoryName, required this.list});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.amberAccent, title: Text(categoryName),),
      body: Column(
        children: [
          const SizedBox(height: 8,),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, PageRouteBuilder(pageBuilder:  (context, animation, secondaryAnimation) =>
                            ProductsScreen(list[index].slug ?? "null", list[index].name ?? "null")));
                      },
                      child: Container(
                        height: 56,
                        padding: EdgeInsets.all(8),
                        child: Row(
                          children: [
                            //SvgPicture.network(state.allCategoriesModel?.data?.categories?[index].smallImage ?? "null"),
                            SizedBox(width: 8,),
                            Text(list[index].name ?? "null", style: TextStyle(fontWeight: FontWeight.bold),),
                            Spacer(),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
