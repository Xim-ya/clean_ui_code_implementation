part of '../product_detail_page.dart';

class _SizeInfoView extends StatelessWidget {
  const _SizeInfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        /// SIZE
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Text>[
            Text(
              'Size',
              style: AppTextStyle.body1,
            ),
            Text(
              'Size Guide',
              style: AppTextStyle.body2,
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ...List.generate(sizeOptions.length, (index) {
              final option = sizeOptions[index];
              final buttonSize = (MediaQuery.of(context).size.width - 76) / 5;
              return ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: Size(buttonSize, buttonSize),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: AppColor.lightGrey,
                  // background (button) color
                  foregroundColor: AppColor.black, // foreground (text) color
                ),
                onPressed: () {},
                child: Text(option),
              );
            })
          ],
        ),
      ],
    );
  }
}
