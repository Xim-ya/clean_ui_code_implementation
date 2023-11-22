import 'package:clean_ui_code_implementation/src/product_detail/local_widgets/expandable_text_view.dart';
import 'package:clean_ui_code_implementation/src/utils/app_color.dart';
import 'package:clean_ui_code_implementation/src/utils/app_text_style.dart';
import 'package:clean_ui_code_implementation/src/utils/assets.dart';
import 'package:clean_ui_code_implementation/src/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailPagePrev extends StatelessWidget {
  const ProductDetailPagePrev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                /// HEADER
                Container(
                  height: 386,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Image.asset(Assets.productImg0).image,
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      /// PRODUCT INFO
                      SizedBox(
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
                      ),
                      const SizedBox(height: 20),

                      /// PRODUCT PICTURE LIST
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ...List.generate(productImgList.length, (index) {
                            final img = productImgList[index];
                            final imgSize =
                                (MediaQuery.of(context).size.width - 67) / 4;
                            return Container(
                              height: imgSize,
                              width: imgSize,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: Image.asset(img).image,
                                ),
                              ),
                            );
                          })
                        ],
                      ),
                      const SizedBox(height: 15),

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
                            final buttonSize =
                                (MediaQuery.of(context).size.width - 76) / 5;
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
                                foregroundColor:
                                    AppColor.black, // foreground (text) color
                              ),
                              onPressed: () {},
                              child: Text(option),
                            );
                          })
                        ],
                      ),
                      const SizedBox(height: 20),

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

                      /// REVIEWS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reviews',
                            style: AppTextStyle.body1,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'View All',
                                style: AppTextStyle.body3.copyWith(
                                  color: AppColor.grey,
                                ),
                              ))
                        ],
                      ),

                      const SizedBox(height: 16),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // PROFILE IMAGE
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: Image.asset(
                                          'assets/images/avatar.png',
                                        ).image,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),

                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // REVIEWER NAME
                                      Text(
                                        'Ronald Richards',
                                        style: AppTextStyle.body2,
                                      ),
                                      const SizedBox(height: 5),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          SvgPicture.asset(
                                            Assets.clock,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            '13 Sep, 2020',
                                            style: AppTextStyle.body4.copyWith(
                                              color: AppColor.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                      // REVIEWED DATE
                                    ],
                                  ),
                                  const Spacer(),
                                  Column(
                                    children: <Widget>[
                                      Text.rich(
                                        TextSpan(
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: '4.8',
                                              style: AppTextStyle.body2,
                                            ),
                                            TextSpan(
                                              text: '  rating',
                                              style:
                                                  AppTextStyle.body4.copyWith(
                                                color: AppColor.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      SvgPicture.asset(
                                          'assets/icons/group_star.svg')
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                'Lorem ipsum dolor sit amet,...',
                                style: AppTextStyle.body2.copyWith(
                                  color: AppColor.grey,
                                ),
                              )
                            ],
                          );
                        },
                      ),

                      const SizedBox(height: 20),

                      /// TOTAL Price
                      Row(
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
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).padding.bottom + 96,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// BOTTOM FIXED BUTTON
          Positioned(
            bottom: 0,
            child: MaterialButton(
              elevation: 0,
              onPressed: () {},
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).padding.bottom),
              height: 56 + MediaQuery.of(context).padding.bottom,
              minWidth: MediaQuery.of(context).size.width,
              color: AppColor.purple,
              child: Text(
                'Add to Cart',
                style: AppTextStyle.body1.copyWith(
                  color: AppColor.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
