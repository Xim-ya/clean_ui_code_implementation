import 'package:clean_ui_code_implementation/src/product_detail/local_widgets/expandable_text_view.dart';
import 'package:clean_ui_code_implementation/src/utils/app_color.dart';
import 'package:clean_ui_code_implementation/src/utils/app_text_style.dart';
import 'package:clean_ui_code_implementation/src/utils/assets.dart';
import 'package:clean_ui_code_implementation/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

part 'local_widgets/bottom_fixed_button.dart';
part 'local_widgets/description_view.dart';
part 'local_widgets/img_list_view.dart';
part 'local_widgets/leading_info_view.dart';
part 'local_widgets/price_info_view.dart';
part 'local_widgets/product_detail_header.dart';
part 'local_widgets/product_detail_scaffold.dart';
part 'local_widgets/review_list_view.dart';
part 'local_widgets/size_info_view.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _Scaffold(
      header: _Header(),
      leadingInfoView: _LeadingInfoView(),
      imgListView: _ImgListView(),
      sizeInfoView: _SizeInfoView(),
      descriptionView: _DescriptionInfoView(),
      reviewListView: _ReviewListView(),
      priceInfoView: _PriceInfoView(),
      bottomFixedButton: _BottomFixedButton(),
    );
  }
}
