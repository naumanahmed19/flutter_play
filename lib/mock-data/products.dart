import '../models/product.dart';

import '../models/sections.dart';

import '../models/rating.dart';

List<Sections> sections = <Sections>[
  Sections(
    type: 'New + Updated Games',
    moreUrl: '/latest',
    products: [
      Product(
        id: '0',
        bannerUrl: 'images/banner.png',
        title: 'Cut the Rope 2',
        size: '20 MB',
        downloads: '23456',
        thumbnailUrl:
            'https://lh3.googleusercontent.com/01VEchHr1Ke6TnViZH3076ONh94LupPiIS3hZm0o-6oQ-k1LwEnYsOGFcJIK3_LSAQ=s360',
        category: 'Animation',
        description: 'For their fifth fully-animated feature-film '
            'collaboration, Illumination Entertainment and Universal '
            'Pictures present The Secret Life of Pets, a comedy about '
            'the lives our...',
        attachments: [
          'https://lh3.googleusercontent.com/1AOmxDSvc2vu-NZe-YafSC3PDujEyba2yuOoNbMDGGzeJOBV7m2tA12sxTlCKUUJYQ=w2880-h1446',
          'https://lh3.googleusercontent.com/-7nASZDEQdDg-pe7X3WYBvmDMb0Qbi5AJusw5PFDqT_PFR_k-xpxEAAZ7lja1X_Dju2W=w2880-h1446',
          'https://lh3.ggpht.com/SaQ9DR-L4tvavX7bta8xeyfBgkeMgJGykaGS0hsXQnb8TTbn0sHPUEmbT8NZ2JDqXss=w2880-h1446',
          'https://lh3.googleusercontent.com/3q9a2Bl4NsNtyE5F31daylw6I1JRLxd78z04L78qkGzr3TUjkL0w7tsiKoEZL4yB3a3o=w2880-h1446',
        ],
        rating: [
          Rating(
            average: 4.4,
            gameplay: 3.2,
            graphics: 4.0,
            controls: 3.4,
            ratingUsers: '23455',
          ),
        ],
      ),
      Product(
        id: '1',
        bannerUrl: 'images/banner.png',
        title: 'CATS: Crash Arena Turbo Stars',
        size: '20 MB',
        thumbnailUrl:
            'https://lh3.googleusercontent.com/zUWf79lUz6VS95aFEl5T31OrYiETOb1ZbA1ahAuFbVcswfDy7p52TS2-lBweu7ghppI=s360',
        category: 'Racing',
        description: 'For their fifth fully-animated feature-film '
            'collaboration, Illumination Entertainment and Universal '
            'Pictures present The Secret Life of Pets, a comedy about '
            'the lives our...',
        attachments: [
          'https://lh3.googleusercontent.com/_Zgamm_4wUStZ4n6jjm0bQrhg3Df1pYonLbHze6Bv14p792sonPsuWx9UOpZjlygjD0=w2880-h1446',
          'https://lh3.googleusercontent.com/RJVX6JKSOzJZav-nvWloQleqjRGW37et-8MdlD2hs0L7d09AVtZTKwSIZlfZHGGGvQ=w2880-h1446',
          'https://lh3.googleusercontent.com/3YtOxN5jziQndIdiofmXImZ5fbUKLPtvM8zRT_ZYl4DOCXWpcsaO9qSAoKYiAs-MSg=w2880-h1446',
          'https://lh3.googleusercontent.com/y6BHks3z10sOOy9Hf55IcSb_QXeXyHu9drRqdGh5QZdpJ4I2pMSOBmxiIovNfamrx-c=w2880-h1446',
        ],
        rating: [
          Rating(
            average: 4.5,
            gameplay: 4.2,
            graphics: 4.0,
            controls: 3.4,
            ratingUsers: '3435',
          ),
        ],
      ),
      // Product(
      //   id: 't-2-1',
      //   bannerUrl: 'images/banner.png',
      //   title: 'Super Starfish',
      //   size: '20 MB',
      //   thumbnailUrl:
      //       'https://lh3.googleusercontent.com/mAiDdTOnOsc1F37yHMtOHN2fJ9s8Rk5j1WKamXfsYqJ1swG79f3G0-zF5GAzu69zbxw=s360',
      //
      //
      //   categories: ['Animation', 'Comedy'],
      //   description: 'For their fifth fully-animated feature-film '
      //       'collaboration, Illumination Entertainment and Universal '
      //       'Pictures present The Secret Life of Pets, a comedy about '
      //       'the lives our...',
      //   attachments: [
      //     'https://lh3.googleusercontent.com/De4QGnBvGSfD33MCWLQkwXkz-ncw7y_cDwXGR2a9EsiSzCmrQL3tNBbItvHW0yvem6I=w2880-h1446',
      //     'https://lh3.googleusercontent.com/De4QGnBvGSfD33MCWLQkwXkz-ncw7y_cDwXGR2a9EsiSzCmrQL3tNBbItvHW0yvem6I=w2880-h1446',
      //     'https://lh3.googleusercontent.com/Y2svTwZZbqShu1ftAR0ugnOu8imRiq4nIP0NjNL11E_Z2-yEH541xIaUb3Bm851TUjA=w2880-h1446',
      //     'https://lh3.googleusercontent.com/8xZQzK5xA6IfGIKgSZ4hyPmUNqXieKCFffRgqO75ngMYk5KXi9yqnN0UPvsnPGvSqygB=w2880-h1446',
      //   ],
      // ),
      // Product(
      //   id: 't-2-2',
      //   bannerUrl: 'images/banner.png',
      //   title: '8 Ball Pool',
      //   size: '20 MB',
      //   thumbnailUrl:
      //       'https://lh3.googleusercontent.com/g75hrt7A-SyJyPRNh82p_mjEEkBqJw_Q4VZSLEiKmJG7n3YsEtTSCaY3HDluXCAV14Q=s360',
      //
      //
      //   categories: ['Animation', 'Comedy'],
      //   description: 'For their fifth fully-animated feature-film '
      //       'collaboration, Illumination Entertainment and Universal '
      //       'Pictures present The Secret Life of Pets, a comedy about '
      //       'the lives our...',
      //   attachments: [
      //     'https://lh3.googleusercontent.com/i-8JovwU1NPboG0BHZ8d9KDuWFHuxmFSpghZHwDOca58pRZGmF_NelaoW0WxfZWMMGE=w2880-h1446',
      //     'https://lh3.googleusercontent.com/lVIC2ezqj_WFxLp9oBoMXv_UkTz_G6kzOvBB0gfK2EbjVozrg7bJUKvPOrUuR0A3vc4=w2880-h1446',
      //     'https://lh3.googleusercontent.com/LU2FiBDk0I0ZmJa5XNUvZgPg5Kj3UxeaumRviqFgvczEU_uDWyos-7NFWs387UWD4S8=w2880-h1446',
      //     'https://lh3.googleusercontent.com/M9yFXfFJcCHu5Agt2xgpn4SQDPXvO8qpv_K5AWmcwtdmFIlu_rkBlUU2XJDDGuyShUfM=w2880-h1446',
      //   ],
      // ),
      // Product(
      //   id: 't-2-3',
      //   bannerUrl: 'images/banner.png',
      //   title: 'Mini Militia - Doodle Army 2',
      //   size: '20 MB',
      //   thumbnailUrl:
      //       'https://lh3.ggpht.com/PngI3eCj8wt9sz7zmbd3H8TC7AV4OxoZWeI9tvbn1IJlfh3nlmMnp55WTM51PodR9QZt=s360',
      //
      //
      //   categories: ['Animation', 'Comedy'],
      //   description: 'For their fifth fully-animated feature-film '
      //       'collaboration, Illumination Entertainment and Universal '
      //       'Pictures present The Secret Life of Pets, a comedy about '
      //       'the lives our...',
      //   attachments: [
      //     'https://lh3.ggpht.com/MUKPZRA7i7Zk4m9hbAlpWP0FIVUboEBig91EO2DyNxeg9DPVK6bm4XkTq58QmlQ5JXM=w2880-h1446',
      //     'https://lh3.ggpht.com/EuXqHnWe1P7kbN1Ex2GD_BA9sfu4chUVH98spGk8dv_H3u5vp6ZJmqRprpx6aPRGnfU=w2880-h1446',
      //     'https://lh3.ggpht.com/MUKPZRA7i7Zk4m9hbAlpWP0FIVUboEBig91EO2DyNxeg9DPVK6bm4XkTq58QmlQ5JXM=w2880-h1446',
      //     'https://lh3.ggpht.com/EuXqHnWe1P7kbN1Ex2GD_BA9sfu4chUVH98spGk8dv_H3u5vp6ZJmqRprpx6aPRGnfU=w2880-h1446',
      //   ],
      // ),
    ],
  ),
];

List<Product> products = [];

Product fetchProduct(index) {
  print("our index is $index");
  sections.forEach((section) {
    section.products.forEach((product) {
      products.add(product);
    });
  });
  return products[index];
}
