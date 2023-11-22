part of '../product_detail_page.dart';

class _ImgListView extends StatelessWidget {
  const _ImgListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ...List.generate(productImgList.length, (index) {
          final img = productImgList[index];
          final imgSize = (MediaQuery.of(context).size.width - 67) / 4;
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
    );
  }
}
