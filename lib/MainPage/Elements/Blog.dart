import 'package:flutter/material.dart';
import 'package:diversion_flutter_new/LoginPage/LoginStatus.dart';
import 'MainShapeElements.dart';


class Blog extends StatelessWidget{

  static String html = """
  <!DOCTYPE html>
  <html>
    <head>
      <title>Twitter Feed </title>
    </head>
    <body>
      <a class="twitter-timeline" href="https://twitter.com/MDhack2020?ref_src=twsrc%5Etfw">Tweets by MDhack2020</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
    </body>
  </html>
  """;


 Widget placeholder = Container();

  //String h2m = html2md.convert(html);

  @override
  Widget build(BuildContext context) {
    return greyRectangle("Blog",placeholder);
  }
}
