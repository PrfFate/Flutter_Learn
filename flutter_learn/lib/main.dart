import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learn/101/button_learn.dart';
import 'package:flutter_learn/101/color_learn.dart';
import 'package:flutter_learn/101/column_row_learn.dart';
import 'package:flutter_learn/101/container_sized_learn_box.dart';
import 'package:flutter_learn/101/custom_widget_learn.dart';
import 'package:flutter_learn/101/indicator_learn.dart';
import 'package:flutter_learn/101/list_tile_learn.dart';
import 'package:flutter_learn/101/list_view_builder.dart';
import 'package:flutter_learn/101/list_view_learn.dart';
import 'package:flutter_learn/101/navigation_learn.dart';
import 'package:flutter_learn/101/page_view_learn.dart';
import 'package:flutter_learn/101/stack_learn.dart';
import 'package:flutter_learn/101/statefull_learn.dart';
import 'package:flutter_learn/101/statefull_life_cycle_learn.dart';
import 'package:flutter_learn/101/text_field_learn.dart';
import 'package:flutter_learn/202/model_learn_view.dart';
import 'package:flutter_learn/202/tab_learn.dart';
import 'package:flutter_learn/demos/color_demos_view.dart';
import 'package:flutter_learn/demos/color_life_cycle_view.dart';
import 'package:flutter_learn/demos/my_collections_demos.dart';
import 'package:flutter_learn/demos/node_demos_view.dart';
import 'package:flutter_learn/demos/stack_demos_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          tabBarTheme: TabBarTheme(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.label,
          ),
          bottomAppBarTheme: BottomAppBarTheme(
            shape: CircularNotchedRectangle(),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)
              .copyWith(error: ColorsItem.sulu),
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: Colors.white),
          cardTheme: CardTheme(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey.shade900,
            titleTextStyle: TextStyle(color: Colors.white),
            centerTitle: true,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: ModelLearnView(),
    );
  }
}
