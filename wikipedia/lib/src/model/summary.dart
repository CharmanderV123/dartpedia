import 'title_set.dart';

class Summary {

  Summanry({
    required this.titles,
    required this.pageid,
    required this.extract,
    required this.extractHtml,
    required this.lang,
    required this.dir,
    this.url,
    this.description,
  });

  TitleSet titles;

  int pageid;

  String extract;

  String extractHtml;

  String? url;

  String long;

  String dir;

  String? description;

  static Summary fromJson(Map<String, Object?> json){
    return switch (json) {
      {
        'titles': final Map<String, Object?> titles,
        'pageid': final int pageid,
        'extract': final String extract,
        'extract_html': final String extractHtml,
        'lang': final String lang,
        'dir': final String dir,
        'content_urls':{
          'desktop': {'page': final String url},
          'mobile' : {'page': String _},
        },
        'description': final String description,

        } => 
        Summary(
          titles: TitleSet.fromJson(titles),
          pageid: pageid,
          extract: extract,
          extractHtml: extractHtml,
          lang: lang,
          dir: dir,
          url: url,
          description: description,
        ),
        {
          'titles': final Map<String, Object?> titles,
          'pageid': final int pageid,
          'extract': final String extract,
          'extract_html': final String extractHtml,
          'lang': final String lang,
          'dir': final String dir,
          'content_urls':{
            'desktop': {'page': final String url},
            'mobile' : {'page': String _},
          },
        } =>
        Summary(
          titles: TitleSet.fromJson(titles),
          pageid: pageid,
          extract: extract,
          extractHtml: extractHtml,
          lang: lang,
          dir: dir,
          url: url,
        ),
        _ => throw FormatException('Could not deserialize Summary, json=$json'),
    };
  }

  @override
  String toString() =>
    'Summary['
    'titles=$titles, '
    'pageid=$pageid, '
    'extract=$extract, '
    'extractHtml=$extractHtml, '
    'lang=$lang, '
    'dir=$dir, '
    'description=$description'
    ']';
}
  