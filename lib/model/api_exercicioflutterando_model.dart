// class IntoxiAnime {
//   int? id;
//   String? date;
//   String? dateGmt;
//   Guid? guid;
//   String? modified;
//   String? modifiedGmt;
//   String? slug;
//   String? status;
//   String? type;
//   String? link;
//   Guid? title;
//   Content? content;
//   Content? excerpt;
//   int? author;
//   int? featuredMedia;
//   String? commentStatus;
//   String? pingStatus;
//   bool? sticky;
//   String? template;
//   String? format;
//   Meta? meta;
//   List<int>? categories;
//   List<int>? tags;
//   List<String>? classList;
//   String? yoastHead;
//   YoastHeadJson? yoastHeadJson;
//   Links? lLinks;

//   IntoxiAnime(
//       {this.id,
//       this.date,
//       this.dateGmt,
//       this.guid,
//       this.modified,
//       this.modifiedGmt,
//       this.slug,
//       this.status,
//       this.type,
//       this.link,
//       this.title,
//       this.content,
//       this.excerpt,
//       this.author,
//       this.featuredMedia,
//       this.commentStatus,
//       this.pingStatus,
//       this.sticky,
//       this.template,
//       this.format,
//       this.meta,
//       this.categories,
//       this.tags,
//       this.classList,
//       this.yoastHead,
//       this.yoastHeadJson,
//       this.lLinks});

//   IntoxiAnime.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     date = json['date'];
//     dateGmt = json['date_gmt'];
//     guid = json['guid'] != null ? Guid.fromJson(json['guid']) : null;
//     modified = json['modified'];
//     modifiedGmt = json['modified_gmt'];
//     slug = json['slug'];
//     status = json['status'];
//     type = json['type'];
//     link = json['link'];
//     title = json['title'] != null ? Guid.fromJson(json['title']) : null;
//     content =
//         json['content'] != null ? Content.fromJson(json['content']) : null;
//     excerpt =
//         json['excerpt'] != null ? Content.fromJson(json['excerpt']) : null;
//     author = json['author'];
//     featuredMedia = json['featured_media'];
//     commentStatus = json['comment_status'];
//     pingStatus = json['ping_status'];
//     sticky = json['sticky'];
//     template = json['template'];
//     format = json['format'];
//     meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
//     categories = json['categories'].cast<int>();
//     tags = json['tags'].cast<int>();
//     classList = json['class_list'].cast<String>();
//     yoastHead = json['yoast_head'];
//     yoastHeadJson = json['yoast_head_json'] != null
//         ? YoastHeadJson.fromJson(json['yoast_head_json'])
//         : null;
//     lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['date'] = date;
//     data['date_gmt'] = dateGmt;
//     if (guid != null) {
//       data['guid'] = guid!.toJson();
//     }
//     data['modified'] = modified;
//     data['modified_gmt'] = modifiedGmt;
//     data['slug'] = slug;
//     data['status'] = status;
//     data['type'] = type;
//     data['link'] = link;
//     if (title != null) {
//       data['title'] = title!.toJson();
//     }
//     if (content != null) {
//       data['content'] = content!.toJson();
//     }
//     if (excerpt != null) {
//       data['excerpt'] = excerpt!.toJson();
//     }
//     data['author'] = author;
//     data['featured_media'] = featuredMedia;
//     data['comment_status'] = commentStatus;
//     data['ping_status'] = pingStatus;
//     data['sticky'] = sticky;
//     data['template'] = template;
//     data['format'] = format;
//     if (meta != null) {
//       data['meta'] = meta!.toJson();
//     }
//     data['categories'] = categories;
//     data['tags'] = tags;
//     data['class_list'] = classList;
//     data['yoast_head'] = yoastHead;
//     if (yoastHeadJson != null) {
//       data['yoast_head_json'] = yoastHeadJson!.toJson();
//     }
//     if (lLinks != null) {
//       data['_links'] = lLinks!.toJson();
//     }
//     return data;
//   }
// }

// class Guid {
//   String? rendered;

//   Guid({this.rendered});

//   Guid.fromJson(Map<String, dynamic> json) {
//     rendered = json['rendered'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['rendered'] = rendered;
//     return data;
//   }
// }

// class Content {
//   String? rendered;
//   bool? protected;

//   Content({this.rendered, this.protected});

//   Content.fromJson(Map<String, dynamic> json) {
//     rendered = json['rendered'];
//     protected = json['protected'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['rendered'] = rendered;
//     data['protected'] = protected;
//     return data;
//   }
// }

// class Meta {
//   String? footnotes;

//   Meta({this.footnotes});

//   Meta.fromJson(Map<String, dynamic> json) {
//     footnotes = json['footnotes'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['footnotes'] = footnotes;
//     return data;
//   }
// }

// class YoastHeadJson {
//   String? title;
//   Robots? robots;
//   String? canonical;
//   String? ogLocale;
//   String? ogType;
//   String? ogTitle;
//   String? ogDescription;
//   String? ogUrl;
//   String? ogSiteName;
//   String? articlePublisher;
//   String? articlePublishedTime;
//   String? articleModifiedTime;
//   List<OgImage>? ogImage;
//   String? author;
//   String? twitterCard;
//   String? twitterCreator;
//   String? twitterSite;
//   TwitterMisc? twitterMisc;
//   Schema? schema;

//   YoastHeadJson(
//       {this.title,
//       this.robots,
//       this.canonical,
//       this.ogLocale,
//       this.ogType,
//       this.ogTitle,
//       this.ogDescription,
//       this.ogUrl,
//       this.ogSiteName,
//       this.articlePublisher,
//       this.articlePublishedTime,
//       this.articleModifiedTime,
//       this.ogImage,
//       this.author,
//       this.twitterCard,
//       this.twitterCreator,
//       this.twitterSite,
//       this.twitterMisc,
//       this.schema});

//   YoastHeadJson.fromJson(Map<String, dynamic> json) {
//     title = json['title'];
//     robots =
//         json['robots'] != null ? Robots.fromJson(json['robots']) : null;
//     canonical = json['canonical'];
//     ogLocale = json['og_locale'];
//     ogType = json['og_type'];
//     ogTitle = json['og_title'];
//     ogDescription = json['og_description'];
//     ogUrl = json['og_url'];
//     ogSiteName = json['og_site_name'];
//     articlePublisher = json['article_publisher'];
//     articlePublishedTime = json['article_published_time'];
//     articleModifiedTime = json['article_modified_time'];
//     if (json['og_image'] != null) {
//       ogImage = <OgImage>[];
//       json['og_image'].forEach((v) {
//         ogImage!.add(OgImage.fromJson(v));
//       });
//     }
//     author = json['author'];
//     twitterCard = json['twitter_card'];
//     twitterCreator = json['twitter_creator'];
//     twitterSite = json['twitter_site'];
//     twitterMisc = json['twitter_misc'] != null
//         ? TwitterMisc.fromJson(json['twitter_misc'])
//         : null;
//     schema =
//         json['schema'] != null ? Schema.fromJson(json['schema']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['title'] = title;
//     if (robots != null) {
//       data['robots'] = robots!.toJson();
//     }
//     data['canonical'] = canonical;
//     data['og_locale'] = ogLocale;
//     data['og_type'] = ogType;
//     data['og_title'] = ogTitle;
//     data['og_description'] = ogDescription;
//     data['og_url'] = ogUrl;
//     data['og_site_name'] = ogSiteName;
//     data['article_publisher'] = articlePublisher;
//     data['article_published_time'] = articlePublishedTime;
//     data['article_modified_time'] = articleModifiedTime;
//     if (ogImage != null) {
//       data['og_image'] = ogImage!.map((v) => v.toJson()).toList();
//     }
//     data['author'] = author;
//     data['twitter_card'] = twitterCard;
//     data['twitter_creator'] = twitterCreator;
//     data['twitter_site'] = twitterSite;
//     if (twitterMisc != null) {
//       data['twitter_misc'] = twitterMisc!.toJson();
//     }
//     if (schema != null) {
//       data['schema'] = schema!.toJson();
//     }
//     return data;
//   }
// }

// class Robots {
//   String? index;
//   String? follow;
//   String? maxSnippet;
//   String? maxImagePreview;
//   String? maxVideoPreview;

//   Robots(
//       {this.index,
//       this.follow,
//       this.maxSnippet,
//       this.maxImagePreview,
//       this.maxVideoPreview});

//   Robots.fromJson(Map<String, dynamic> json) {
//     index = json['index'];
//     follow = json['follow'];
//     maxSnippet = json['max-snippet'];
//     maxImagePreview = json['max-image-preview'];
//     maxVideoPreview = json['max-video-preview'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['index'] = index;
//     data['follow'] = follow;
//     data['max-snippet'] = maxSnippet;
//     data['max-image-preview'] = maxImagePreview;
//     data['max-video-preview'] = maxVideoPreview;
//     return data;
//   }
// }

// class OgImage {
//   int? width;
//   int? height;
//   String? url;
//   String? type;

//   OgImage({this.width, this.height, this.url, this.type});

//   OgImage.fromJson(Map<String, dynamic> json) {
//     width = json['width'];
//     height = json['height'];
//     url = json['url'];
//     type = json['type'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['width'] = width;
//     data['height'] = height;
//     data['url'] = url;
//     data['type'] = type;
//     return data;
//   }
// }

// class TwitterMisc {
//   String? escritoPor;
//   String? estTempoDeLeitura;

//   TwitterMisc({this.escritoPor, this.estTempoDeLeitura});

//   TwitterMisc.fromJson(Map<String, dynamic> json) {
//     escritoPor = json['Escrito por'];
//     estTempoDeLeitura = json['Est. tempo de leitura'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['Escrito por'] = escritoPor;
//     data['Est. tempo de leitura'] = estTempoDeLeitura;
//     return data;
//   }
// }

// class Schema {
//   String? context;
//   List<Graph>? graph;

//   Schema({this.context, this.graph});

//   Schema.fromJson(Map<String, dynamic> json) {
//     context = json['@context'];
//     if (json['@graph'] != null) {
//       graph = <Graph>[];
//       json['@graph'].forEach((v) {
//         graph!.add(Graph.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['@context'] = context;
//     if (graph != null) {
//       data['@graph'] = graph!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Graph {
//   String? type;
//   String? id;
//   IsPartOf? isPartOf;
//   PostAuthor? author;
//   String? headline;
//   String? datePublished;
//   String? dateModified;
//   IsPartOf? mainEntityOfPage;
//   int? wordCount;
//   IsPartOf? publisher;
//   Image? image;
//   String? thumbnailUrl;
//   List<String>? keywords;
//   List<String>? articleSection;
//   String? inLanguage;
//   String? url;
//   String? name;
//   IsPartOf? primaryImageOfPage;
//   IsPartOf? breadcrumb;
//   List<PotentialAction>? potentialAction;
//   String? contentUrl;
//   int? width;
//   int? height;
//   List<ItemListElement>? itemListElement;
//   String? description;
//   Logo? logo;
//   List<String>? sameAs;

//   Graph(
//       {this.type,
//       this.id,
//       this.isPartOf,
//       this.author,
//       this.headline,
//       this.datePublished,
//       this.dateModified,
//       this.mainEntityOfPage,
//       this.wordCount,
//       this.publisher,
//       this.image,
//       this.thumbnailUrl,
//       this.keywords,
//       this.articleSection,
//       this.inLanguage,
//       this.url,
//       this.name,
//       this.primaryImageOfPage,
//       this.breadcrumb,
//       this.potentialAction,
//       this.contentUrl,
//       this.width,
//       this.height,
//       this.itemListElement,
//       this.description,
//       this.logo,
//       this.sameAs});

//   Graph.fromJson(Map<String, dynamic> json) {
//     type = json['@type'];
//     id = json['@id'];
//     isPartOf = json['isPartOf'] != null
//         ? IsPartOf.fromJson(json['isPartOf'])
//         : null;
//     author =
//         json['author'] != null ? PostAuthor.fromJson(json['author']) : null;
//     headline = json['headline'];
//     datePublished = json['datePublished'];
//     dateModified = json['dateModified'];
//     mainEntityOfPage = json['mainEntityOfPage'] != null
//         ? IsPartOf.fromJson(json['mainEntityOfPage'])
//         : null;
//     wordCount = json['wordCount'];
//     publisher = json['publisher'] != null
//         ? IsPartOf.fromJson(json['publisher'])
//         : null;
//     image = json['image'] != null ? Image.fromJson(json['image']) : null;
//     thumbnailUrl = json['thumbnailUrl'];
//     keywords = json['keywords'].cast<String>();
//     articleSection = json['articleSection'].cast<String>();
//     inLanguage = json['inLanguage'];
//     url = json['url'];
//     name = json['name'];
//     primaryImageOfPage = json['primaryImageOfPage'] != null
//         ? IsPartOf.fromJson(json['primaryImageOfPage'])
//         : null;
//     breadcrumb = json['breadcrumb'] != null
//         ? IsPartOf.fromJson(json['breadcrumb'])
//         : null;
//     if (json['potentialAction'] != null) {
//       potentialAction = <PotentialAction>[];
//       json['potentialAction'].forEach((v) {
//         potentialAction!.add(PotentialAction.fromJson(v));
//       });
//     }
//     contentUrl = json['contentUrl'];
//     width = json['width'];
//     height = json['height'];
//     if (json['itemListElement'] != null) {
//       itemListElement = <ItemListElement>[];
//       json['itemListElement'].forEach((v) {
//         itemListElement!.add(ItemListElement.fromJson(v));
//       });
//     }
//     description = json['description'];
//     logo = json['logo'] != null ? Logo.fromJson(json['logo']) : null;
//     sameAs = json['sameAs'].cast<String>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['@type'] = type;
//     data['@id'] = id;
//     if (isPartOf != null) {
//       data['isPartOf'] = isPartOf!.toJson();
//     }
//     if (author != null) {
//       data['author'] = author!.toJson();
//     }
//     data['headline'] = headline;
//     data['datePublished'] = datePublished;
//     data['dateModified'] = dateModified;
//     if (mainEntityOfPage != null) {
//       data['mainEntityOfPage'] = mainEntityOfPage!.toJson();
//     }
//     data['wordCount'] = wordCount;
//     if (publisher != null) {
//       data['publisher'] = publisher!.toJson();
//     }
//     if (image != null) {
//       data['image'] = image!.toJson();
//     }
//     data['thumbnailUrl'] = thumbnailUrl;
//     data['keywords'] = keywords;
//     data['articleSection'] = articleSection;
//     data['inLanguage'] = inLanguage;
//     data['url'] = url;
//     data['name'] = name;
//     if (primaryImageOfPage != null) {
//       data['primaryImageOfPage'] = primaryImageOfPage!.toJson();
//     }
//     if (breadcrumb != null) {
//       data['breadcrumb'] = breadcrumb!.toJson();
//     }
//     if (potentialAction != null) {
//       data['potentialAction'] =
//           potentialAction!.map((v) => v.toJson()).toList();
//     }
//     data['contentUrl'] = contentUrl;
//     data['width'] = width;
//     data['height'] = height;
//     if (itemListElement != null) {
//       data['itemListElement'] =
//           itemListElement!.map((v) => v.toJson()).toList();
//     }
//     data['description'] = description;
//     if (logo != null) {
//       data['logo'] = logo!.toJson();
//     }
//     data['sameAs'] = sameAs;
//     return data;
//   }
// }

// class IsPartOf {
//   String? id;

//   IsPartOf({this.id});

//   IsPartOf.fromJson(Map<String, dynamic> json) {
//     id = json['@id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['@id'] = id;
//     return data;
//   }
// }

// class PostAuthor {
//   String? name;
//   String? id;

//   PostAuthor({this.name, this.id});

//   PostAuthor.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     id = json['@id'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['@id'] = id;
//     return data;
//   }
// }

// class Image {
//   String? id;
//   String? type;
//   String? inLanguage;
//   String? url;
//   String? contentUrl;
//   String? caption;

//   Image(
//       {this.id,
//       this.type,
//       this.inLanguage,
//       this.url,
//       this.contentUrl,
//       this.caption});

//   Image.fromJson(Map<String, dynamic> json) {
//     id = json['@id'];
//     type = json['@type'];
//     inLanguage = json['inLanguage'];
//     url = json['url'];
//     contentUrl = json['contentUrl'];
//     caption = json['caption'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['@id'] = id;
//     data['@type'] = type;
//     data['inLanguage'] = inLanguage;
//     data['url'] = url;
//     data['contentUrl'] = contentUrl;
//     data['caption'] = caption;
//     return data;
//   }
// }

// class PotentialAction {
//   String? type;
//   List<String>? target;
//   QueryInput? queryInput;

//   PotentialAction({this.type, this.target, this.queryInput});

//   PotentialAction.fromJson(Map<String, dynamic> json) {
//     type = json['@type'];
//     target = json['target'].cast<String>();
//     queryInput = json['query-input'] != null
//         ? QueryInput.fromJson(json['query-input'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['@type'] = type;
//     data['target'] = target;
//     if (queryInput != null) {
//       data['query-input'] = queryInput!.toJson();
//     }
//     return data;
//   }
// }

// class QueryInput {
//   String? type;
//   bool? valueRequired;
//   String? valueName;

//   QueryInput({this.type, this.valueRequired, this.valueName});

//   QueryInput.fromJson(Map<String, dynamic> json) {
//     type = json['@type'];
//     valueRequired = json['valueRequired'];
//     valueName = json['valueName'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['@type'] = type;
//     data['valueRequired'] = valueRequired;
//     data['valueName'] = valueName;
//     return data;
//   }
// }

// class ItemListElement {
//   String? type;
//   int? position;
//   String? name;
//   String? item;

//   ItemListElement({this.type, this.position, this.name, this.item});

//   ItemListElement.fromJson(Map<String, dynamic> json) {
//     type = json['@type'];
//     position = json['position'];
//     name = json['name'];
//     item = json['item'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['@type'] = type;
//     data['position'] = position;
//     data['name'] = name;
//     data['item'] = item;
//     return data;
//   }
// }

// class Logo {
//   String? type;
//   String? inLanguage;
//   String? id;
//   String? url;
//   String? contentUrl;
//   int? width;
//   int? height;
//   String? caption;

//   Logo(
//       {this.type,
//       this.inLanguage,
//       this.id,
//       this.url,
//       this.contentUrl,
//       this.width,
//       this.height,
//       this.caption});

//   Logo.fromJson(Map<String, dynamic> json) {
//     type = json['@type'];
//     inLanguage = json['inLanguage'];
//     id = json['@id'];
//     url = json['url'];
//     contentUrl = json['contentUrl'];
//     width = json['width'];
//     height = json['height'];
//     caption = json['caption'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['@type'] = type;
//     data['inLanguage'] = inLanguage;
//     data['@id'] = id;
//     data['url'] = url;
//     data['contentUrl'] = contentUrl;
//     data['width'] = width;
//     data['height'] = height;
//     data['caption'] = caption;
//     return data;
//   }
// }

// class Links {
//   List<Self>? self;
//   List<Collection>? collection;
//   List<About>? about;
//   List<PostAuthor>? author;
//   List<Replies>? replies;
//   List<VersionHistory>? versionHistory;
//   List<PredecessorVersion>? predecessorVersion;
//   List<WpFeaturedmedia>? wpFeaturedmedia;
//   List<WpAttachment>? wpAttachment;
//   List<WpTerm>? wpTerm;
//   List<Curies>? curies;

//   Links(
//       {this.self,
//       this.collection,
//       this.about,
//       this.author,
//       this.replies,
//       this.versionHistory,
//       this.predecessorVersion,
//       this.wpFeaturedmedia,
//       this.wpAttachment,
//       this.wpTerm,
//       this.curies});

//   Links.fromJson(Map<String, dynamic> json) {
//     if (json['self'] != null) {
//       self = <Self>[];
//       json['self'].forEach((v) {
//         self!.add(Self.fromJson(v));
//       });
//     }
//     if (json['collection'] != null) {
//       collection = <Collection>[];
//       json['collection'].forEach((v) {
//         collection!.add(Collection.fromJson(v));
//       });
//     }
//     if (json['about'] != null) {
//       about = <About>[];
//       json['about'].forEach((v) {
//         about!.add(About.fromJson(v));
//       });
//     }
//     if (json['author'] != null) {
//       author = <PostAuthor>[];
//       json['author'].forEach((v) {
//         author!.add(PostAuthor.fromJson(v));
//       });
//     }
//     if (json['replies'] != null) {
//       replies = <Replies>[];
//       json['replies'].forEach((v) {
//         replies!.add(Replies.fromJson(v));
//       });
//     }
//     if (json['version-history'] != null) {
//       versionHistory = <VersionHistory>[];
//       json['version-history'].forEach((v) {
//         versionHistory!.add(VersionHistory.fromJson(v));
//       });
//     }
//     if (json['predecessor-version'] != null) {
//       predecessorVersion = <PredecessorVersion>[];
//       json['predecessor-version'].forEach((v) {
//         predecessorVersion!.add(PredecessorVersion.fromJson(v));
//       });
//     }
//     if (json['wp:featuredmedia'] != null) {
//       wpFeaturedmedia = <WpFeaturedmedia>[];
//       json['wp:featuredmedia'].forEach((v) {
//         wpFeaturedmedia!.add(WpFeaturedmedia.fromJson(v));
//       });
//     }
//     if (json['wp:attachment'] != null) {
//       wpAttachment = <WpAttachment>[];
//       json['wp:attachment'].forEach((v) {
//         wpAttachment!.add(WpAttachment.fromJson(v));
//       });
//     }
//     if (json['wp:term'] != null) {
//       wpTerm = <WpTerm>[];
//       json['wp:term'].forEach((v) {
//         wpTerm!.add(WpTerm.fromJson(v));
//       });
//     }
//     if (json['curies'] != null) {
//       curies = <Curies>[];
//       json['curies'].forEach((v) {
//         curies!.add(Curies.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (self != null) {
//       data['self'] = self!.map((v) => v.toJson()).toList();
//     }
//     if (collection != null) {
//       data['collection'] = collection!.map((v) => v.toJson()).toList();
//     }
//     if (about != null) {
//       data['about'] = about!.map((v) => v.toJson()).toList();
//     }
//     if (author != null) {
//       data['author'] = author!.map((v) => v.toJson()).toList();
//     }
//     if (replies != null) {
//       data['replies'] = replies!.map((v) => v.toJson()).toList();
//     }
//     if (versionHistory != null) {
//       data['version-history'] =
//           versionHistory!.map((v) => v.toJson()).toList();
//     }
//     if (predecessorVersion != null) {
//       data['predecessor-version'] =
//           predecessorVersion!.map((v) => v.toJson()).toList();
//     }
//     if (wpFeaturedmedia != null) {
//       data['wp:featuredmedia'] =
//           wpFeaturedmedia!.map((v) => v.toJson()).toList();
//     }
//     if (wpAttachment != null) {
//       data['wp:attachment'] =
//           wpAttachment!.map((v) => v.toJson()).toList();
//     }
//     if (wpTerm != null) {
//       data['wp:term'] = wpTerm!.map((v) => v.toJson()).toList();
//     }
//     if (curies != null) {
//       data['curies'] = curies!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Self {
//   String? href;
//   TargetHints? targetHints;

//   Self({this.href, this.targetHints});

//   Self.fromJson(Map<String, dynamic> json) {
//     href = json['href'];
//     targetHints = json['targetHints'] != null
//         ? TargetHints.fromJson(json['targetHints'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['href'] = href;
//     if (targetHints != null) {
//       data['targetHints'] = targetHints!.toJson();
//     }
//     return data;
//   }
// }

// class TargetHints {
//   List<String>? allow;

//   TargetHints({this.allow});

//   TargetHints.fromJson(Map<String, dynamic> json) {
//     allow = json['allow'].cast<String>();
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['allow'] = allow;
//     return data;
//   }
// }

// class Collection {
//   String? href;

//   Collection({this.href});

//   Collection.fromJson(Map<String, dynamic> json) {
//     href = json['href'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['href'] = href;
//     return data;
//   }
// }

// class LinkAuthor {
//   bool? embeddable;
//   String? href;

//   LinkAuthor({this.embeddable, this.href});

//   LinkAuthor.fromJson(Map<String, dynamic> json) {
//     embeddable = json['embeddable'];
//     href = json['href'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['embeddable'] = embeddable;
//     data['href'] = href;
//     return data;
//   }
// }

// class VersionHistory {
//   int? count;
//   String? href;

//   VersionHistory({this.count, this.href});

//   VersionHistory.fromJson(Map<String, dynamic> json) {
//     count = json['count'];
//     href = json['href'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['count'] = count;
//     data['href'] = href;
//     return data;
//   }
// }

// class PredecessorVersion {
//   int? id;
//   String? href;

//   PredecessorVersion({this.id, this.href});

//   PredecessorVersion.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     href = json['href'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['href'] = href;
//     return data;
//   }
// }

// class WpTerm {
//   String? taxonomy;
//   bool? embeddable;
//   String? href;

//   WpTerm({this.taxonomy, this.embeddable, this.href});

//   WpTerm.fromJson(Map<String, dynamic> json) {
//     taxonomy = json['taxonomy'];
//     embeddable = json['embeddable'];
//     href = json['href'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['taxonomy'] = taxonomy;
//     data['embeddable'] = embeddable;
//     data['href'] = href;
//     return data;
//   }
// }

// class Curies {
//   String? name;
//   String? href;
//   bool? templated;

//   Curies({this.name, this.href, this.templated});

//   Curies.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     href = json['href'];
//     templated = json['templated'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = name;
//     data['href'] = href;
//     data['templated'] = templated;
//     return data;
//   }
// }