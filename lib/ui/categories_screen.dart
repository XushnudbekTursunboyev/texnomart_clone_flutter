
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:texnomart_clone_flutter/presenter/categories/categories_bloc.dart';
import 'package:texnomart_clone_flutter/presenter/main/main_bloc.dart';
import 'package:texnomart_clone_flutter/ui/ChildCategoryScreen.dart';
import 'package:texnomart_clone_flutter/ui/products_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {

  final bloc = CategoriesBloc();

  @override
  void initState() {
    bloc.add(CategoriesInitialEvent());
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: bloc,
        child: BlocConsumer<CategoriesBloc, CategoriesState>(
            builder: (context, state) {
              if(state.status == Status.Success) {
                return Scaffold(
                  appBar: AppBar(
                    title:
                    Container(
                        height: 56,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(0xFFF7F7F9)),
                        margin: EdgeInsets.only(top: 16, bottom: 8),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.search_sharp, color: Colors.grey,),
                              SizedBox(width: 4,),
                              Text('Men sotib olmoqchiman', style: TextStyle(color: Colors.grey, fontSize: 16),),
                              Spacer(),
                              Icon(Icons.mic_rounded, color: Colors.grey,)
                            ],
                          ),
                        )
                    ),
                  ),
                  body: Column(
                    children: [
                      SizedBox(height: 8,),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ListView.builder(
                              itemCount: state.allCategoriesModel?.data?.categories?.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(context, PageRouteBuilder(pageBuilder:  (context, animation, secondaryAnimation) => ChildCategoryScreen(list: state.allCategoriesModel?.data?.categories?[index].childs ?? [], categoryName: state.allCategoriesModel?.data?.categories?[index].name ?? "",)));
                                  },
                                  child: Container(
                                    height: 56,
                                    padding: EdgeInsets.all(8),
                                    child: Row(
                                      children: [
                                        SvgPicture.network(state.allCategoriesModel?.data?.categories?[index].smallImage ?? "null"),
                                        SizedBox(width: 8,),
                                        Text(state.allCategoriesModel?.data?.categories?[index].name ?? "null", style: TextStyle(fontWeight: FontWeight.bold),),
                                        Spacer(),
                                        Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey,)
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
              }else
              if(state.status == Status.Loading) {
                return Scaffold(
                    appBar: AppBar(
                      title: Container(
                          height: 56,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(0xFFF7F7F9)),
                          margin: EdgeInsets.only(top: 16, bottom: 8),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.search_sharp, color: Colors.grey,),
                                SizedBox(width: 4,),
                                Text('Men sotib olmoqchiman', style: TextStyle(color: Colors.grey, fontSize: 16),),
                                Spacer(),
                                Icon(Icons.mic_rounded, color: Colors.grey,)
                              ],
                            ),
                          )
                      ),

                    ),
                    body:  Column(
                      children: [
                        Center(child: CircularProgressIndicator()),
                      ],
                    ));
              }else { return Center(
                child: Container(
                  child: Scaffold(
                      appBar: AppBar(
                        title: Container(
                            height: 56,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Color(0xFFF7F7F9)),
                            margin: EdgeInsets.only(top: 16, bottom: 8),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.search_sharp, color: Colors.grey,),
                                  SizedBox(width: 4,),
                                  Text('Men sotib olmoqchiman', style: TextStyle(color: Colors.grey, fontSize: 16),),
                                  Spacer(),
                                  Icon(Icons.mic_rounded, color: Colors.grey,)
                                ],
                              ),
                            )
                        ),

                      ),
                      body: Icon(Icons.network_check_sharp, color: Colors.grey, size: 56,)),
                ),
              );
              }
            },
            listener:  (context, state) {

            }),
    );
  }
}
