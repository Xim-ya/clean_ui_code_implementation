part of '../product_detail_page.dart';

class _PriceInfoView extends StatelessWidget {
  const _PriceInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Total Price',
              style: AppTextStyle.body1,
            ),
            const SizedBox(height: 5),
            Text(
              'with VAT, SD',
              style: AppTextStyle.body4.copyWith(
                color: AppColor.grey,
              ),
            )
          ],
        ),
        Text(
          '\$125',
          style: AppTextStyle.body1,
        )
      ],
    );
  }
}
