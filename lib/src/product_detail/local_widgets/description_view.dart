part of '../product_detail_page.dart';

class _DescriptionInfoView extends StatelessWidget {
  const _DescriptionInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// DESCRIPTION
        Text(
          'Description',
          style: AppTextStyle.body1,
        ),
        const SizedBox(height: 10),
        const ExpandableTextView(
          text: productDescription,
          maxLines: 3,
        ),
      ],
    );
  }
}
