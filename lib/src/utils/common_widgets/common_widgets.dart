import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsapi_getx/src/config/font_sizes.dart';
import 'package:newsapi_getx/src/config/styles.dart';

class CategoryTile extends StatelessWidget {
  final imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Stack(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: 120.scale,
              height: 60.scale,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 120.scale,
            height: 60.scale,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.black26,
            ),
            child: Text(
              categoryName,
              style: globalStyle.text.bodySmall.copyWith(color: Colors.white, fontWeight: FontWeight.w500,)
              // const TextStyle(
              //   color: Colors.white,
              //   fontSize: 14,
              //   fontWeight: FontWeight.w500,
              // ),
            ),
          )
        ]),
      ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, title, desc, url;
  BlogTile({
    required this.imageUrl,
    required this.desc,
    required this.title,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        width: 400.scale,
        margin: EdgeInsets.only(bottom: 16.scale),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(imageUrl: imageUrl,),
            ),
             SizedBox(
              height: 8.scale,
            ),
            Text(
              title,
              style: globalStyle.text.h3.copyWith(color: Colors.black87, fontWeight: FontWeight.w500,),
              // TextStyle(
              //   fontSize: 18,
              //   color: Colors.black87,
              //   fontWeight: FontWeight.w500,
              // ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              desc,
              style: globalStyle.text.body.copyWith(color: Colors.black54,)
              // TextStyle(
              //   color: Colors.black54,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}

