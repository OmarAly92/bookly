import 'package:bookly/core/util/functions/launch_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:bookly/features/home_view/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class BoxAction extends StatelessWidget {
  const BoxAction({super.key, required this.bookData});

  final BookModel bookData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: bookData.saleInfo!.listPrice?.amount != null
          ? Row(
              children: [
                Expanded(
                    child: CustomButton(
                  backgroundColor: Colors.white,
                  texColor: Colors.black,
                  text:
                      '${bookData.saleInfo!.listPrice?.amount ?? '0'} ${bookData.saleInfo!.listPrice?.currencyCode ?? ''}',
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                )),
                Expanded(
                  child: CustomButton(
                    backgroundColor: const Color(0xffEF8262),
                    texColor: Colors.white,
                    text: 'Free Preview',
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    fontSize: 16.sp,
                    onPressed: () {
                      // bookData.accessInfo!.webReaderLink!
                      launchCustomUrl(
                          context, bookData.accessInfo!.webReaderLink);
                    },
                  ),
                ),
              ],
            )
          : Row(
              children: [
                Expanded(
                  child: CustomButton(
                    backgroundColor: const Color(0xffEF8262),
                    texColor: Colors.white,
                    text: getText(bookData),
                    borderRadius: BorderRadius.circular(16),
                    fontSize: 16.sp,
                    onPressed: () async {
                      // bookData.accessInfo!.webReaderLink!
                      Uri url = Uri.parse(bookData.accessInfo!.webReaderLink!);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      }
                    },
                  ),
                ),
              ],
            ),
    );
  }

  String getText(BookModel bookData) {
    if (bookData.accessInfo!.webReaderLink == null) {
      return 'Not Available';
    } else {
      return 'Free Preview';
    }
  }
}
