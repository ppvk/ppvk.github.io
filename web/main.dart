import 'dart:html';
import 'dart:async';

List<Element> pages = querySelectorAll('.page');
Element footer = querySelector('footer');


main() {
  window.onHashChange.listen((_) {
    setPage();
  });
  if (window.location.href.contains('#') == false) window.location.href += '#introduction-page';
  setPage();
}

setPage() {
  String target = window.location.href.split('#')[1];
  pages.forEach((element) {
    element.style.opacity = '0';
    footer.style.opacity = '0';
  });

  new Timer(new Duration(milliseconds: 200), () {
    pages.forEach((element) {
      element.hidden = true;

      Element targetElement = querySelector('#$target');
      if (targetElement != null) {
        targetElement.hidden = false;
        new Timer(new Duration(milliseconds: 200), () {
          targetElement.style.opacity = "1";
          footer.style.opacity = '1';
        });
      }
    });
  });
}
