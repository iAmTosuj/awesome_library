import 'package:flutter/material.dart';
import 'package:library_web/app/common/injector/d_i.dart';
import 'package:library_web/app/common/resources/res_colors.dart';
import 'package:library_web/app/common/resources/ui_icon.dart';
import 'package:library_web/app/feature/home_page/state/MainController.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController _textController = TextEditingController();

  SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      decoration: InputDecoration(
        prefixIcon: const Padding(
          padding: EdgeInsets.only(bottom: 2.0),
          child: Icon(UiIcon.search),
        ),
        isDense: true,
        fillColor: ResColors.bgGray40,
        labelText: 'Найти',
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      onChanged: (value) => DI.find<MainPageNotifier>().onSearchBook(value),
    );
  }
}
