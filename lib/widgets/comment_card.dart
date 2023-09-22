import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CommentCard extends StatefulWidget {
  const CommentCard({super.key});

  @override
  State<CommentCard> createState() => _CommentCardState();
}

class _CommentCardState extends State<CommentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 16),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg?q=10&h=200'),
            radius: 18,
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [

                      TextSpan(
                        text: "username",
                        style: const TextStyle(fontWeight: FontWeight.bold)
                      ),

                      TextSpan(
                        text: "Some description",
                        // style: const TextStyle(fontWeight: FontWeight.bold)
                      ),

                    ]
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text('23/12/21',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}