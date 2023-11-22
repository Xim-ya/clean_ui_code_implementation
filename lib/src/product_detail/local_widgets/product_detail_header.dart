part of '../product_detail_page.dart';

class _Header extends StatelessWidget {
  const _Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 386,
      decoration: BoxDecoration(
        color: const Color(0xFFF2F2F2),
        image: DecorationImage(
            image: Image.asset(Assets.productImg0).image,
            fit: BoxFit.fitHeight),
      ),
    );
  }
}
