part of '../product_detail_page.dart';

class _ReviewListView extends StatelessWidget {
  const _ReviewListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // REVIEWER NAME
                        Text(
                          'Ronald Richards',
                          style: AppTextStyle.body2,
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SvgPicture.asset(
                              'assets/icons/clock.svg',
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
                                style: AppTextStyle.body4.copyWith(
                                  color: AppColor.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 5),
                        SvgPicture.asset('assets/icons/group_star.svg')
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet',
                  style: AppTextStyle.body2.copyWith(
                    color: AppColor.grey,
                  ),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
