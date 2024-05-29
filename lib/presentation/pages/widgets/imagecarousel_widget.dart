import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:synapserx_v2/presentation/view_model/system/adimages_provider.dart';
import 'package:url_launcher/url_launcher.dart';

final carouselPositionProvider = StateProvider<int>((ref) => 0);

class ImageCarouselWidget extends ConsumerWidget {
  ImageCarouselWidget({
    super.key,
  });

  static final customCacheManager = CacheManager(
      Config('customeCacheKey', stalePeriod: const Duration(hours: 24)));

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final adimagesList = ref.watch(aDImagesListProvider);
    return adimagesList.when(
      data: (images) {
        return images.isEmpty
            ? Container()
            : Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: AutoSizeText(
                      'News/Articles/Updates',
                      maxLines: 1,
                      minFontSize: 12,
                      maxFontSize: 30,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: SizedBox(
                          height: MediaQuery.of(context).size.width * 0.5,
                          child: CarouselSlider(
                            carouselController: _controller,
                            items: images
                                .map((item) => GestureDetector(
                                    onTap: () async {
                                      Uri url = Uri.parse(item.url!);
                                      _launchUrl(url);
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: CachedNetworkImage(
                                        cacheManager: customCacheManager,
                                        key: UniqueKey(),
                                        imageUrl: item.urlToImage.toString(),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                        fit: BoxFit.fill,
                                        width: double.infinity,
                                        progressIndicatorBuilder:
                                            (context, url, downloadProgress) =>
                                                Center(
                                          child: Platform.isAndroid
                                              ? const LinearProgressIndicator(
                                                  minHeight: 10,
                                                  semanticsLabel:
                                                      'Fetching news item',
                                                )
                                              : const CupertinoActivityIndicator(),
                                        ),
                                      ),
                                    )))
                                .toList(),
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              aspectRatio: 2.0,
                              onPageChanged: (index, reason) {
                                ref
                                    .read(carouselPositionProvider.notifier)
                                    .state = index;
                              },
                            ),
                          ))),
                  Consumer(builder: (context, ref, child) {
                    final value = ref.watch(carouselPositionProvider);
                    return DotsIndicator(
                      dotsCount: images.length,
                      position: value,
                      decorator: DotsDecorator(
                          size: const Size.square(9.0),
                          activeSize: const Size(18.0, 9.0),
                          activeShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    );
                  }),
                  const SizedBox(
                    height: 5,
                  )
                ],
              );
      },
      error: (err, stack) => Text(err.toString()),
      loading: () => const Padding(
          padding: EdgeInsets.all(10),
          child: SpinKitThreeBounce(
            color: Colors.purple,
          )),
    );
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }
}
