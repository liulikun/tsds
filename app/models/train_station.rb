class TrainStation

  STATIONS = [
      'Alamein',
      'Ashburton',
      'Burwood',
      'Hartwell',
      'Willison',
      'Riversdale',
      'Camberwell',
      'Auburn',
      'Glenferrie',
      'Hawthorn',
      'Burnley',
      'East Richmond',
      'Richmond',
      'Parliament',
      'Melbourne Central',
      'Flagstaff',
      'Southern Cross',
      'Flinders Street',

      'Belgrave',
      'Tecoma',
      'Upwey',
      'Upper Ferntree Gully',
      'Ferntree Gully',
      'Boronia',
      'Bayswater',
      'Heathmont',
      'Ringwood',
      'Heatherdale',
      'Mitcham',
      'Nunawading',
      'Blackburn',
      'Laburnum',
      'Box Hill',
      'Mont Albert',
      'Surrey Hills',
      'Chatham',
      'Canterbury',
      'East Camberwell',
      'Camberwell',
      'Auburn',
      'Glenferrie',
      'Hawthorn',
      'Burnley',


      'Craigieburn',
      'Roxburgh Park',
      'Coolaroo',
      'Broadmeadows',
      'Jacana',
      'Glenroy',
      'Oak Park',
      'Pascoe Vale',
      'Strathmore',
      'Glenbervie',
      'Essendon',
      'Moonee Ponds',
      'Ascot Vale',
      'Newmarket',
      'Kensington',
      'North Melbourne',

      'Cranbourne',
      'Merinda Park',
      'Dandenong',
      'Yarraman',
      'Noble Park',
      'Sandown Park',
      'Springvale',
      'Westall',
      'Clayton',
      'Huntingdale',
      'Oakleigh',
      'Hughesdale',
      'Murrumbeena',
      'Carnegie',
      'Caulfield',
      'Malvern',
      'Armadale',
      'Toorak',
      'Hawksburn',
      'South Yarra',

      'Epping',
      'Lalor',
      'Thomastown',
      'Keon Park',
      'Ruthven',
      'Reservoir',
      'Regent',
      'Preston',
      'Bell',
      'Thornbury',
      'Croxton',
      'Northcote',
      'Merri',
      'Rushall',
      'Clifton Hill',
      'Victoria Park',
      'Collingwood',
      'North Richmond',
      'West Richmond',
      'Jolimont',

      'Frankston',
      'Kananook',
      'Seaford',
      'Carrum',
      'Bonbeach',
      'Chelsea',
      'Edithvale',
      'Aspendale',
      'Mordialloc',
      'Parkdale',
      'Mentone',
      'Cheltenham',
      'Highett',
      'Moorabbin',
      'Patterson',
      'Bentleigh',
      'McKinnon',
      'Ormond',
      'Glenhuntly',

      'Glen Waverley',
      'Syndal',
      'Mt Waverley',
      'Jordanville',
      'Holmesglen',
      'East Malvern',
      'Darling',
      'Glen Iris',
      'Gardiner',
      'Tooronga',
      'Kooyong',
      'Heyington',

      'Hurstbridge',
      'Wattle Glen',
      'Diamond Creek',
      'Eltham',
      'Montmorency',
      'Greensborough',
      'Watsonia',
      'Macleod',
      'Rosanna',
      'Heidelberg',
      'Eaglemont',
      'Ivanhoe',
      'Darebin',
      'Alphington',
      'Fairfield',
      'Dennis',
      'Westgarth',
      'Clifton Hill',
      'Victoria Park',
      'Collingwood',
      'North Richmond',
      'West Richmond',

      'Lilydale',
      'Mooroolbark',
      'Croydon',
      'Ringwood East',
      'Ringwood',
      'Heatherdale',
      'Mitcham',
      'Nunawading',
      'Blackburn',
      'Laburnum',
      'Box Hill',
      'Mont Albert',
      'Surrey Hills',
      'Chatham',
      'Canterbury',
      'East Camberwell',

      'Pakenham',
      'Officer',
      'Beaconsfield',
      'Berwick',
      'Narre Warren',
      'Hallam',
      'Dandenong',
      'Yarraman',
      'Noble Park',
      'Sandown Park',
      'Springvale',
      'Westall',
      'Clayton',
      'Huntingdale',
      'Oakleigh',
      'Hughesdale',
      'Murrumbeena',
      'Carnegie',

      'Sandringham',
      'Hampton',
      'Brighton Beach',
      'Middle Brighton',
      'North Brighton',
      'Gardenvale',
      'Elsternwick',
      'Ripponlea',
      'Balaclava',
      'Windsor',
      'Prahran',

      'Stony Point',
      'Crib Point',
      'Morradoo',
      'Bittern',
      'Hastings',
      'Tyabb',
      'Somerville',
      'Baxter',
      'Leawarra',

      'Watergardens',
      'Keilor Plains',
      'St Albans',
      'Ginifer',
      'Albion',
      'Sunshine',
      'Tottenham',
      'Footscray West',
      'Middle Footscray',
      'Footscray',

      'Upfield',
      'Gowrie',
      'Fawkner',
      'Merlynston',
      'Batman',
      'Coburg',
      'Moreland',
      'Anstey',
      'Brunswick',
      'Jewell',
      'Royal Park',
      'Flemington Bridge',
      'Macaulay',

      'Werribee',
      'Hoppers Crossing',
      'Aircraft',
      'Laverton',
      'Westona',
      'Altona',
      'Seaholme',
      'Newport',
      'Spotswood',
      'Yarraville',
      'Seddon',
      'Footscray',
      'South Kensington',

      'Williamstown',
      'Williamstown Beach',
      'North Williamstown'
  ]

  TM1 = {
      'Aircraft' => '-37.8666572,144.7608068'
  }

  TM = {
      'Aircraft' => '-37.8666572,144.7608068',
      'Alamein' => '-37.8681003,145.0796571',
      'Albion' => '-37.7776326,144.8248773',
      'Alphington' => '-37.7783726,145.03164',
      'Altona' => '-37.8671304,144.8296154',
      'Anstey' => '-37.76147,144.9606099',
      'Armadale' => '-37.8557618,145.018727',
      'Ascot Vale' => '-37.775633,144.9221154',
      'Ashburton' => '-37.8602632,145.0820434',
      'Aspendale' => '-38.0271567,145.1020562',
      'Auburn' => '-37.822604,145.0458535',
      'Balaclava' => '-37.8691617,144.9936542',
      'Batman' => '-37.7326552,144.9626999',
      'Baxter' => '-38.1925402,145.1609658',
      'Bayswater' => '-37.8420083,145.2685875',
      'Beaconsfield' => '-38.0509572,145.3663483',
      'Belgrave' => '-37.9101889,145.3540376',
      'Bell' => '-37.7454695,145.0001457',
      'Bentleigh' => '-37.9173657,145.0371062',
      'Berwick' => '-38.0390752,145.3445022',
      'Bittern' => '-38.3368662,145.1783793',
      'Blackburn' => '-37.8201874,145.1503959',
      'Bonbeach' => '-38.0628196,145.119763',
      'Boronia' => '-37.8604294,145.2844738',
      'Box Hill' => '-37.8192145,145.1224049',
      'Brighton Beach' => '-37.9266911,144.9893511',
      'Broadmeadows' => '-37.6830954,144.9197787',
      'Brunswick' => '-37.7678507,144.9594082',
      'Burnley' => '-37.8275298,145.0072552',
      'Burwood' => '-37.8515351,145.080612',
      'Camberwell' => '-37.8260061,145.05772',
      'Canterbury' => '-37.8249827,145.080404',
      'Carnegie' => '-37.8863857,145.0587253',
      'Carrum' => '-38.0755733,145.1225547',
      'Caulfield' => '-37.876509,145.0417668',
      'Chatham' => '-37.8241596,145.0884614',
      'Chelsea' => '-38.0522191,145.1161302',
      'Cheltenham' => '-37.966043,145.0540938',
      'Clayton' => '-37.9246046,145.1206892',
      'Clifton Hill' => '-37.7886353,144.9954045',
      'Coburg' => '-37.7429425,144.9632659',
      'Collingwood' => '-37.8043017,144.993733',
      'Coolaroo' => '-37.6609629,144.9259895',
      'Craigieburn' => '-37.6030155,144.9429339',
      'Cranbourne' => '-38.1000299,145.2813127',
      'Crib Point' => '-38.3656918,145.203835',
      'Croxton' => '-37.7641079,144.9971511',
      'Croydon' => '-37.7957944,145.279939',
      'Dandenong' => '-37.9900086,145.2098709',
      'Darebin' => '-37.7748243,145.0385758',
      'Darling' => '-37.8688021,145.0628687',
      'Dennis' => '-37.7792211,145.0079421',
      'Diamond Creek' => '-37.6732338,145.1588111',
      'Eaglemont' => '-37.7637655,145.0538201',
      'East Camberwell' => '-37.8257135,145.068491',
      'East Malvern' => '-37.8769296,145.069242',
      'East Richmond' => '-37.8264338,144.9977839',
      'Edithvale' => '-38.0379594,145.1084292',
      'Elsternwick' => '-37.8852572,145.0012768',
      'Eltham' => '-37.7134249,145.1476707',
      'Epping' => '-37.6531565,145.0277846',
      'Essendon' => '-37.7559478,144.9163163',
      'Fairfield' => '-37.7791845,145.0168203',
      'Fawkner' => '-37.7149282,144.9605219',
      'Ferntree Gully' => '-37.8815634,145.2950395',
      'Flagstaff' => '-37.8118331,144.9561614',
      'Flemington Bridge' => '-37.7880245,144.9394348',
      'Flinders Street' => '-37.8182146,144.9672068',
      'Footscray' => '-37.8009796,144.9031678',
      'Frankston' => '-38.1433323,145.1259423',
      'Gardenvale' => '-37.8966764,145.0041235',
      'Gardiner' => '-37.8535765,145.0525595',
      'Ginifer' => '-37.7580826,144.8099919',
      'Glen Iris' => '-37.8592124,145.0580764',
      'Glen Waverley' => '-37.8796588,145.1629205',
      'Glenbervie' => '-37.7472868,144.9209053',
      'Glenferrie' => '-37.8215856,145.0364155',
      'Glenhuntly' => '-37.8894099,145.0420806',
      'Glenroy' => '-37.7044262,144.9171824',
      'Gowrie' => '-37.7005511,144.9588462',
      'Greensborough' => '-37.7041839,145.1082612',
      'Hallam' => '-38.0178141,145.2697166',
      'Hampton' => '-37.937576,145.000907',
      'Hartwell' => '-37.8437074,145.0754008',
      'Hastings' => '-38.3053338,145.1859742',
      'Hawksburn' => '-37.8445602,145.0017242',
      'Hawthorn' => '-37.8213151,145.0241742',
      'Heatherdale' => '-37.8188956,145.2126357',
      'Heathmont' => '-37.8276385,145.2442664',
      'Heidelberg' => '-37.757221,145.0608353',
      'Heyington' => '-37.8346646,145.0225752',
      'Highett' => '-37.9477045,145.041387',
      'Holmesglen' => '-37.8745743,145.0899602',
      'Hoppers Crossing' => '-37.8831363,144.701395',
      'Hughesdale' => '-37.8947806,145.0775396',
      'Huntingdale' => '-37.9105423,145.1019085',
      'Hurstbridge' => '-37.6402836,145.1913799',
      'Ivanhoe' => '-37.7689492,145.0452654',
      'Jacana' => '-37.6956649,144.9157836',
      'Jewell' => '-37.7746798,144.9586369',
      'Jolimont' => '-37.8165335,144.9840071',
      'Jordanville' => '-37.8736997,145.1122988',
      'Kananook' => '-38.1207483,145.1357706',
      'Keilor Plains' => '-37.728967,144.7937744',
      'Kensington' => '-37.7937092,144.9305337',
      'Keon Park' => '-37.6939667,145.0119937',
      'Kooyong' => '-37.8396824,145.0322717',
      'Laburnum' => '-37.8209214,145.1404443',
      'Lalor' => '-37.664888,145.0173714',
      'Laverton' => '-37.8633672,144.7737825',
      'Leawarra' => '-38.1521521,145.1400258',
      'Lilydale' => '-37.755652,145.3476805',
      'Macaulay' => '-37.7939472,144.936597',
      'Macleod' => '-37.726355,145.069123',
      'Malvern' => '-37.8743241,145.0380117',
      'McKinnon' => '-37.9103182,145.0383262',
      'Melbourne Central' => '-37.809808,144.963716',
      'Mentone' => '-37.981871,145.0650206',
      'Merinda Park' => '-38.0789637,145.263412',
      'Merlynston' => '-37.7214266,144.9614409',
      'Merri' => '-37.777248,144.9931151',
      'Middle Brighton' => '-37.9148864,144.996726',
      'Middle Footscray' => '-37.8025267,144.8916659',
      'Mitcham' => '-37.8180284,145.1919117',
      'Mont Albert' => '-37.8194484,145.105818',
      'Montmorency' => '-37.7150809,145.1198598',
      'Moonee Ponds' => '-37.7671548,144.9248493',
      'Moorabbin' => '-37.9343798,145.0367032',
      'Mooroolbark' => '-37.7847095,145.3125648',
      'Mordialloc' => '-38.0064086,145.0874848',
      'Moreland' => '-37.7545329,144.9618196',
      'Morradoo' => '-38.3542353,145.1899245',
      'Mt Waverley' => '-37.8752984,145.1279080',
      'Murrumbeena' => '-37.8902715,145.0674392',
      'Narre Warren' => '-38.0277377,145.3039843',
      'Newmarket' => '-37.7873106,144.928986',
      'Newport' => '-37.8422801,144.8835632',
      'Noble Park' => '-37.9674896,145.1773159',
      'North Brighton' => '-37.9043104,145.0025769',
      'North Melbourne' => '-37.8070147,144.9418659',
      'North Richmond' => '-37.8097649,144.9928594',
      'North Williamstown' => '-37.8569729,144.8889318',
      'Northcote' => '-37.7700974,144.9951603',
      'Nunawading' => '-37.8204,145.1771',
      'Oak Park' => '-37.7182481,144.9215783',
      'Oakleigh' => '-37.9001436,145.0880323',
      'Officer' => '-38.0663896,145.4119512',
      'Ormond' => '-37.9029881,145.0395724',
      'Pakenham' => '-38.0803901,145.4858419',
      'Parkdale' => '-37.9931058,145.0763218',
      'Parliament' => '-37.8117899,144.9730912',
      'Pascoe Vale' => '-37.7310556,144.9282251',
      'Patterson' => '-37.9245956,145.0357344',
      'Prahran' => '-37.8497955,144.9898474',
      'Preston' => '-37.7392742,145.0003809',
      'Regent' => '-37.7285659,145.0026195',
      'Reservoir' => '-37.7181853,145.0063778',
      'Richmond' => '-37.8249063,144.9910837',
      'Ringwood' => '-37.8159937,145.2288439',
      'Ringwood East' => '-37.8119493,145.2495001',
      'Ripponlea' => '-37.8760318,144.9954011',
      'Riversdale' => '-37.8328211,145.0693935',
      'Rosanna' => '-37.7430972,145.0661962',
      'Roxburgh Park' => '-37.6382935,144.935195',
      'Royal Park' => '-37.7808825,144.9511242',
      'Rushall' => '-37.7825073,144.99152',
      'Ruthven' => '-37.7080301,145.0094332',
      'Sandown Park' => '-37.9567277,145.1630967',
      'Sandringham' => '-37.9503624,145.0045473',
      'Seaford' => '-38.1041192,145.1281623',
      'Seaholme' => '-37.8677509,144.8412715',
      'Seddon' => '-37.8090843,144.895601',
      'Somerville' => '-38.2250997,145.1760758',
      'South Kensington' => '-37.7995589,144.9249473',
      'South Yarra' => '-37.8387694,144.9922505',
      'Southern Cross' => '-37.8181602,144.9533883',
      'Spotswood' => '-37.8304609,144.8859819',
      'Springvale' => '-37.9496062,145.1536315',
      'St Albans' => '-37.7449318,144.8001504',
      'Stony Point' => '-38.3734157,145.2200788',
      'Strathmore' => '-37.7438326,144.9271727',
      'Sunshine' => '-37.7881557,144.8328387',
      'Surrey Hills' => '-37.8240448,145.0985726',
      'Syndal' => '-37.8762887,145.1490782',
      'Tecoma' => '-37.9075388,145.3416198',
      'Thomastown' => '-37.6811991,145.0139331',
      'Thornbury' => '-37.7554346,144.9985046',
      'Toorak' => '-37.8509566,145.0140918',
      'Tooronga' => '-37.8491178,145.0415166',
      'Tottenham' => '-37.799036,144.8628839',
      'Tyabb' => '-38.2597834,145.1862171',
      'Upfield' => '-37.6655565,144.9465743',
      'Upper Ferntree Gully' => '-37.8926742,145.3078485',
      'Upwey' => '-37.9027933,145.330551',
      'Victoria Park' => '-37.7992268,144.9943264',
      'Watergardens' => '-37.7009673,144.7739226',
      'Watsonia' => '-37.711641,145.0832775',
      'Wattle Glen' => '-37.6634706,145.1818949',
      'Werribee' => '-37.8996634,144.6609478',
      'Footscray West' => '-37.8018111,144.8852760',
      'West Richmond' => '-37.8147786,144.9914423',
      'Westall' => '-37.9382845,145.1385892',
      'Westgarth' => '-37.780162,144.999082',
      'Westona' => '-37.8651,144.8135',
      'Williamstown' => '-37.8676709,144.9050609',
      'Williamstown Beach' => '-37.8639813,144.8945244',
      'Willison' => '-37.8357318,145.0702506',
      'Windsor' => '-37.8566198,144.9924731',
      'Yarraman' => '-37.9779189,145.1913499',
      'Yarraville' => '-37.8155649,144.8899918'
  }
end