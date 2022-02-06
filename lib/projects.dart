Map sample = {
  'name': '',
  'description': '',
  'image': 'assets/programming/',
  'link': '',
  'app_links': {'android': '', 'ios': ''},
  'repo': ''
};

List programmingProjects = [
  {
    'name': 'mProve Sports',
    'description':
        "This is a new cross-platform mobile app I'm working on with a startup seeking to connect players looking for private sports coaching to qualified coaches.\n\nI'm building this app using Flutter to allow for one code base to be used to deploy android and iOS apps simultaneously.\n\nThe app is currently in development and beginning alpha testing. It will be available on the google play store and app store soon!",
    'image': 'assets/programming/mprove.png',
    'language': ['Flutter'],
  },
  {
    'name': 'UPick',
    'description':
        "A mobile app that allows users to find new movies to watch either by themselves or by finding common interests with friends and family. Available in the app store as UPick Movies and in the google play store as UPick.\n\nThis was the first app I wrote using Google's Flutter framework for cross-platform mobile development. UPick was primarily a pet project to see if I could design, build, and deploy a mobile app.\n\nThis project required a good deal of effort on the backend. First I had to locate APIs that would allow me to get movie information and poster data. I then wrote a python script to pull fresh data from these APIs, merge the data into a usable format, and then truncate and replace the data in the databases the frontend mobile apps relied on. I used Firebase for backend services and databasing for UPick.",
    'image': 'assets/programming/upick.png',
    'repo': 'https://github.com/tayloraj10/UPick',
    'app_links': {
      'android':
          'https://play.google.com/store/apps/details?id=com.upick.upickapp',
      'ios': 'https://apps.apple.com/us/app/upick-movies/id1570321941'
    },
    'language': ['Flutter'],
  },
  {
    'name': 'Wordle Clone',
    'description':
        "A simple clone of the popular word game Wordle. I built this in react just for some practice and I'm planning to continue adding onto this and making it a 1 to 1 clone to the real Wordle game.",
    'image': 'assets/programming/wordle_clone.png',
    'link': 'https://wordle-clone-38bd8.web.app/',
    'repo': 'https://github.com/tayloraj10/wordle-clone',
    'language': ['React'],
  },
  {
    'name': 'Phlask',
    'description':
        'Phlask is an open-source, non-profit project for finding and sharing water sources within the Philadelphia area. The project has the dual intention of challenging the social norm of having to purchase water when there is a public or private water tap present and of providing a technological platform for the public to locate and share known sources of water. This project started through Code for Philly (a group of civic minded technologists building projects for the social good)\n\nI joined the project shortly after it began as the first developer. I built the first web app (pictured below) using mostly vanilla JavaScript and Google Maps APIs. As the project grew we decided to do a re-write in react and I helped port over my existing code and wrote some of the other front-end features. During this re-write I transitioned over to maintaining the databases behind the web app and leading data enhancement and gathering projects.',
    'image': 'assets/programming/phlask.png',
    'link': 'https://phlask.me/',
    'repo': 'https://github.com/phlask/phlask-map',
    'language': ['React'],
  },
  {
    'name': 'Online Geocoder',
    'image': 'assets/programming/online-geocoder.png',
    'description':
        'A custom geocoding web application I wrote for a previous job for internal use. We would often need to get coordinates for large lists of addresses on a daily basis. When the online service we had been using went down I took the opportunity to write my own and then we started using it daily in place of the old service.',
    'repo': 'https://github.com/online-geocoder/online-geocoder.github.io',
    'link': 'https://online-geocoder.github.io/',
    'language': ['Python'],
  },
  {
    'name': 'RDP Python Algorithm',
    'description':
        'An implementation of the Ramer–Douglas–Peucker algorithm for generalizing cartographic features in Python. I wrote this script for a project in a Python class I took in college.',
    'image': 'assets/programming/rdp.png',
    'repo': 'https://github.com/tayloraj10/RDP',
    'language': ['Python'],
  },
  {
    'name': 'Old Portfolio Site',
    'description': '',
    'image': 'assets/programming/old_portfolio.png',
    'link': 'https://tayloraj10.github.io',
    'repo': 'https://github.com/tayloraj10/tayloraj10.github.io'
  }
];

List gisProjects = [
  {
    'name': 'Temple University Bike Lanes',
    'image': 'assets/gis/Site Selection - Bike Lanes.png',
  },
  {
    'name': 'Temple University Bike Lanes (Methodology Maps)',
    'image': 'assets/gis/Site Selection (Methodology)- Bike Lanes.png',
  },
  {
    'name': 'Colorado Chemical Plant Site Selection)',
    'image': 'assets/gis/Site Selection - Colorado Chemical Plant.png',
  },
  {
    'name': 'Wind and Hail Hazard Index',
    'image': 'assets/gis/Hazard Index.png',
  },
  {
    'name': 'Parking Lot Storm Drains GPS Collection',
    'image': 'assets/gis/GPS - Storm Drains.png',
  },
  {
    'name': 'Temple University Police Call Buttons GPS Collection',
    'image': 'assets/gis/GPS - Police Call Buttons.png',
  },
  {
    'name': 'Route Analysis',
    'image': 'assets/gis/Network Analysis.png',
  },
  {
    'name': 'Hillshade and Slope (Raster GIS)',
    'image': 'assets/gis/Raster Analysis - Hillshade and Slope.png',
  },
  {
    'name': 'Map Article Layout',
    'image': 'assets/gis/Layout - New Stadium Construction.png',
  }
];

List nfts = [
  {
    'name': 'Philadelphia Transit Map',
    'image':
        'https://lh3.googleusercontent.com/WGCJx8Oq_MnImJM26nedbptGAT4X_umzls2JhiWqmYfuJnHyXCiTApHHkMWocOJXcRdAUvCqGD-CCk8cuVgqjsppWb1xRRDIqQpn=w600',
    'link':
        'https://opensea.io/assets/matic/0x2953399124f0cbb46d2cbacd8a89cf0599974963/108066343708887524339820302445796842548124428363067039062180393641644209995777',
    'collection': 'Urban Maps'
  },
];

List nftCollections = [
  {'name': 'Urban Maps', 'link': 'https://opensea.io/collection/urban-maps'},
];
