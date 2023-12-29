import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? color;

  const StarRating(
      {super.key,
      this.starCount = 5,
      this.rating = .0,
      this.onRatingChanged,
      this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: Theme.of(context).primaryColor,
        size: 14.0,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color ?? Theme.of(context).primaryColor,
        size: 14.0,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color ?? Theme.of(context).primaryColor,
        size: 14.0,
      );
    }
    return InkResponse(
      onTap: onRatingChanged == null
          ? null
          : () {
              onRatingChanged?.call(index + 1.0);
            },
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ...List.generate(starCount, (index) => buildStar(context, index)),
      (rating > 0.0)
          ? Text(
              '(${rating.toString()})',
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey[600],
              ),
            )
          : const SizedBox.shrink(),
    ]);
  }
}
