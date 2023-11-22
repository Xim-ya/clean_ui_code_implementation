part of '../product_detail_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    Key? key,
    required this.header,
    required this.leadingInfoView,
    required this.imgListView,
    required this.sizeInfoView,
    required this.descriptionView,
    required this.reviewListView,
    required this.priceInfoView,
    required this.bottomFixedButton,
  }) : super(key: key);

  final Widget header;
  final Widget leadingInfoView;
  final Widget imgListView;
  final Widget sizeInfoView;
  final Widget descriptionView;
  final Widget reviewListView;
  final Widget priceInfoView;
  final Widget bottomFixedButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                header,
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      leadingInfoView,
                      const SizedBox(height: 20),
                      imgListView,
                      const SizedBox(height: 15),
                      sizeInfoView,
                      const SizedBox(height: 20),
                      descriptionView,
                      const SizedBox(height: 15),
                      reviewListView,
                      const SizedBox(height: 20),
                      priceInfoView,
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
            child: bottomFixedButton,
          )
        ],
      ),
    );
  }
}
