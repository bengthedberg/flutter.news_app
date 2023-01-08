import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:news/models/article.dart';
import 'package:news/widgets/custom_tag.dart';
import 'package:news/widgets/image_container.dart';

class ArticleScreen extends ConsumerWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  static const routeName = '/article';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Article article =
        ModalRoute.of(context)!.settings.arguments as Article;

    return ImageContainer(
      width: double.infinity,
      imageUrl: article.imageUrl,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.white),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          extendBody: true,
          body: ListView(
            children: [
              _NewsHeadline(
                article: article,
              ),
              _NewsBody(article: article)
            ],
          )),
    );
  }
}

class _NewsBody extends StatelessWidget {
  const _NewsBody({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomTag(
                  backgroundcolor: Colors.black,
                  children: [
                    CircleAvatar(
                      radius: 10,
                      backgroundImage: NetworkImage(
                        article.authorImageUrl,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      article.author,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(width: 20),
                CustomTag(
                  backgroundcolor: Colors.grey.shade200,
                  children: [
                    const Icon(
                      Icons.schedule,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${DateTime.now().difference(article.createdAt).inDays}d',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(width: 20),
                CustomTag(
                  backgroundcolor: Colors.grey.shade200,
                  children: [
                    const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '${article.views}',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(article.title,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Text(article.body,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(height: 1.25)),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 2,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1.25),
              itemBuilder: ((context, index) {
                return ImageContainer(
                    width: MediaQuery.of(context).size.width * 0.42,
                    imageUrl: article.imageUrl,
                    margin: const EdgeInsets.only(
                        right: 5.0, bottom: 5.0));
              }),
            ),
          ]),
    );
  }
}

class _NewsHeadline extends StatelessWidget {
  const _NewsHeadline({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          CustomTag(
            backgroundcolor: Colors.grey.withAlpha(150),
            children: [
              Text(
                article.category,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
          const SizedBox(height: 10),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  height: 1.25,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            article.subtitle,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
