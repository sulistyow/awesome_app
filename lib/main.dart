import 'package:awesome_app/domain/usecases/get_detail_image.dart';
import 'package:awesome_app/domain/usecases/get_images.dart';
import 'package:awesome_app/injection.dart' as di;
import 'package:awesome_app/presentation/pages/home_page.dart';
import 'package:awesome_app/presentation/provider/image_detail_bloc.dart';
import 'package:awesome_app/presentation/provider/image_list_bloc.dart';
import 'package:awesome_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection.dart';
import 'presentation/pages/detail_page.dart';
import 'utils/routes.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => ImageListBloc(getImages: locator<GetImages>())),
        BlocProvider(
            create: (_) =>
                ImageDetailBloc(getDetailImage: locator<GetDetailImage>())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Awesome App',
        theme: ThemeData.light(),
        home: HomePage(),
        navigatorObservers: [routeObserver],
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: (_) => HomePage());
            case DETAIL_PAGE_ROUTE:
              final id = settings.arguments as int;
              return MaterialPageRoute(
                  builder: (_) => DetailPage(
                        photoId: id,
                      ),
                  settings: settings);
            default:
              return MaterialPageRoute(builder: (_) {
                return Scaffold(
                  body: Center(
                    child: Text('Page not found'),
                  ),
                );
              });
          }
        },
      ),
    );
  }
}
