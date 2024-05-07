import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapi_getx/src/pages/home_bloc/application/home_bloc.dart';
import 'package:newsapi_getx/src/utils/common_widgets/common_widgets.dart';

class HomeTwo extends StatelessWidget {
  const HomeTwo({super.key});

  @override
  Widget build(BuildContext mainContext) {
    return BlocProvider(
        create: (BuildContext context) => HomeBloc()..add(const GetNewsEvent()),
        child: Scaffold(
          appBar: AppBar(
            leading: Container(),
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text("Flutter", style: TextStyle(color: Colors.black)),
                Text("News", style: TextStyle(color: Colors.blue))
              ],
            ),
            centerTitle: true,
            elevation: 0.0,
          ),
          body: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeStateInitial) {
                return Center(
                  child: Container(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (state is HomeStateLoading) {
                return Center(
                  child: Container(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              if (state is HomeStateLoaded) {
                print("In loaded state");
                return SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            child: Column(
                              children: [
                                // Container(
                                //   height: 70,
                                //   child: ListView.builder(
                                //     itemCount: controller.categories.length,
                                //     shrinkWrap: true,
                                //     scrollDirection: Axis.horizontal,
                                //     itemBuilder: (context, index) {
                                //       return CategoryTile(
                                //         imageUrl: controller.categories[index].imageUrl,
                                //         categoryName:
                                //             controller.categories[index].categoryName,
                                //       );
                                //     },
                                //   ),
                                // ),

                                ///Blogs
                                Container(
                                  child: ListView.builder(
                                    physics: ScrollPhysics(),
                                    itemCount: state.newsItems.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return BlogTile(
                                        imageUrl: state.newsItems[index].urlToImage ?? '',
                                        desc: state.newsItems[index].description ?? '',
                                        title: state.newsItems[index].title ?? '',
                                        url: state.newsItems[index].url ?? '',
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
              }
              if (state is HomeStateError) {
                return Center(
                  child: Container(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              return Container();
            },
          ),
        ));
  }
}
