import 'package:awesome_app/presentation/bloc/image_list_bloc.dart';
import 'package:awesome_app/presentation/bloc/image_list_event.dart';
import 'package:awesome_app/presentation/bloc/image_list_state.dart';
import 'package:awesome_app/presentation/widgets/grid_image_card.dart';
import 'package:awesome_app/presentation/widgets/list_image_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isGridView = true;
  int page = 1;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    context.read<ImageListBloc>().add(FetchImageList(page));

    scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final bloc = context.read<ImageListBloc>();
    if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 100 &&
        !bloc.isFetching &&
        !bloc.errorFetch) {
      if (bloc.errorFetch) {
        page = 1;
      } else {
        page++;
      }
      context.read<ImageListBloc>().add(FetchImageList(page));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<ImageListBloc, ImageListState>(
        listener: (context, state) {
          state.when(
            isLoading: () {},
            isLoadedImage: (imageList) {},
            isError: (message) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(message)));
            },
            isLoadingMore: (imageList) {},
          );
        },
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text("Awesome App"),
              ),
              actions: [
                IconButton(
                  icon: Icon(isGridView ? Icons.list : Icons.grid_view),
                  onPressed: () {
                    setState(() {
                      isGridView = !isGridView;
                    });
                  },
                ),
              ],
            ),
            BlocBuilder<ImageListBloc, ImageListState>(
              builder: (context, state) {
                return state.when(
                  isLoading: () {
                    return const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    );
                  },
                  isLoadedImage: (imageList) {
                    return SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      sliver: isGridView
                          ? SliverGrid(
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        delegate: SliverChildBuilderDelegate(
                              (context, index) {
                            if (index == imageList.length) {
                              // Show loading spinner
                              return const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                    child: CircularProgressIndicator()),
                              );
                            }
                            return GridImageCard(photo: imageList[index]);
                          },
                          childCount: imageList.length + 1, // Include loader
                        ),
                      )
                          : SliverList(
                        delegate: SliverChildBuilderDelegate(
                              (context, index) {
                            if (index == imageList.length) {
                              return const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                    child: CircularProgressIndicator()),
                              );
                            }
                            return ListImageCard(photo: imageList[index]);
                          },
                          childCount: imageList.length + 1, // Include loader
                        ),
                      ),
                    );
                  },
                  isError: (message) {
                    return SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Opss! Something wrong!",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            OutlinedButton(
                              onPressed: () {
                                context.read<ImageListBloc>().add(FetchImageList(1));
                              },
                              child: Text("Refresh"),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  isLoadingMore: (imageList) {
                    return SliverPadding(
                      padding: const EdgeInsets.all(8.0),
                      sliver: isGridView
                          ? SliverGrid(
                        gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        delegate: SliverChildBuilderDelegate(
                              (context, index) {
                            if (index == imageList.length) {
                              return const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                    child: CircularProgressIndicator()),
                              );
                            }
                            return GridImageCard(photo: imageList[index]);
                          },
                          childCount: imageList.length + 1, // Include loader
                        ),
                      )
                          : SliverList(
                        delegate: SliverChildBuilderDelegate(
                              (context, index) {
                            if (index == imageList.length) {
                              return const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                    child: CircularProgressIndicator()),
                              );
                            }
                            return ListImageCard(photo: imageList[index]);
                          },
                          childCount: imageList.length + 1, // Include loader
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
