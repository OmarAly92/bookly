import 'package:bookly/features/search_view/presentation/state_management/search_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/util/functions/build_outline_input_border.dart';
import '../../../../../core/util/styles.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchTextEditingController = TextEditingController();

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: TextField(
              controller: searchTextEditingController,
              decoration: InputDecoration(
                hintText: 'Search',
                border: const OutlineInputBorder(),
                enabledBorder: buildOutlineInputBorder(),
                focusedBorder: buildOutlineInputBorder(),
                suffixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                ),
              ),
              onChanged: (value) {
                BlocProvider.of<SearchCubit>(context).searchAction(
                    searchedTitle: searchTextEditingController.text);
              },
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Text('Search Result', style: Styles.textStyle18),
          ),
          SizedBox(height: 16.h),
          const Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
