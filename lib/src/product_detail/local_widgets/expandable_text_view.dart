import 'package:clean_ui_code_implementation/src/utils/app_color.dart';
import 'package:clean_ui_code_implementation/src/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class ExpandableTextView extends StatefulWidget {
  final String text;
  final int maxLines;
  final bool isLoading;

  const ExpandableTextView(
      {super.key,
      required this.text,
      required this.maxLines,
      this.isLoading = false});

  factory ExpandableTextView.createSkeleton() => const ExpandableTextView(
        text: '',
        maxLines: 3,
        isLoading: true,
      );

  @override
  _ExpandableTextViewState createState() => _ExpandableTextViewState();
}

class _ExpandableTextViewState extends State<ExpandableTextView> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    if (widget.isLoading == true) {
      return const Column(
        children: [
          SizedBox(
            height: 21,
          ),
        ],
      );
    }

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final TextPainter textPainter = TextPainter(
          text: TextSpan(text: widget.text),
          maxLines: widget.maxLines,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth);

        final bool isTextOverflowing = textPainter.didExceedMaxLines;

        return Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 21),
              child: Text(
                widget.text,
                style: AppTextStyle.body2.copyWith(color: AppColor.grey),
                maxLines: isExpanded ? null : widget.maxLines,
                overflow:
                    isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
              ),
            ),
            if (isTextOverflowing)
              AnimatedPositioned(
                  right: 0,
                  bottom: isExpanded ? 0 : 19,
                  duration: const Duration(milliseconds: 80),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    height: 21,
                    decoration: const BoxDecoration(
                      color: AppColor.white,
                    ),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: MaterialButton(
                        elevation: 0,
                        color: Colors.white,
                        minWidth: 0,
                        height: 0,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        child: Text(
                          isExpanded ? 'Close' : 'Read More..',
                          style: PretendardTextStyle.semiBold(
                            size: 15,
                            height: 17,
                            color: AppColor.black,
                          ),
                        ),
                      ),
                    ),
                  )),
          ],
        );
      },
    );
  }
}
