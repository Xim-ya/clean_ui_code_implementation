part of '../product_detail_page.dart';

class _BottomFixedButton extends StatelessWidget {
  const _BottomFixedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: () {},
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      height: 56 + MediaQuery.of(context).padding.bottom,
      minWidth: MediaQuery.of(context).size.width,
      color: AppColor.purple,
      child: Text(
        'Add to Cart',
        style: AppTextStyle.body1.copyWith(
          color: AppColor.white,
        ),
      ),
    );
  }
}
