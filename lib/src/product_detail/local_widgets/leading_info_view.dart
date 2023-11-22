part of '../product_detail_page.dart';

class _LeadingInfoView extends StatelessWidget {
  const _LeadingInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.end,
        alignment: WrapAlignment.spaceBetween,
        children: <Widget>[
          Wrap(
            direction: Axis.vertical,
            children: [
              Text(
                'Men\'s Printed Pullover Hoodie ',
                style: AppTextStyle.body3.copyWith(
                  color: AppColor.grey,
                ),
              ),
              const SizedBox(height: 8),
              // NAME
              Text(
                'Nike Club Fleece',
                style: AppTextStyle.headline3,
              ),
            ],
          ),

          Wrap(
            direction: Axis.vertical,
            children: <Widget>[
              Text(
                'Price',
                style: AppTextStyle.body3.copyWith(
                  color: AppColor.grey,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '\$120',
                style: AppTextStyle.headline3,
              ),
            ],
          ),
          // CATEGORY
        ],
      ),
    );
  }
}
