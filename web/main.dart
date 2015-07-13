/*
import 'dart:html';
import 'dart:async';
import 'package:markdown/markdown.dart' as md;


Map<String, String> readme = {};

main() {

  querySelectorAll('a').toList().forEach((Element link) async {
    if (link.attributes['href'].toString().contains('github.com')) {
      String src = link.attributes['href'].toString().replaceAll(
          'https://github.com/', 'https://raw.githubusercontent.com/') + '/master/README.md';

      link.onMouseOver.listen((_) async {
        readme[src] = await HttpRequest.getString(src);

        querySelector('#viewer')
          ..setInnerHtml(md.markdownToHtml(readme[src]), validator:nv);
      });

    }

  });

}

NodeValidator nv = new NodeValidator();
*/