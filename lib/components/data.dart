class Title {
  final String name;

  Title({
    this.name,
  });
}

List<Title> title = [
  Title(name: 'KrishiKadam'),
  Title(name: 'कृषिकदम'),
];

List seninfo = [
  "Sensor Information",
  "सेंसर जानकारी"
];

List sen1 = [
  "Sensor1:Soil",
  " सेंसर 1: मिट्टी"
] ;
List sen2 = [
  "Sensor1:Humidity",
  "सेंसर 1: नमी"
] ;
List sen3 = [
  "Sensor1:Temperature",
  "सेंसर 1: तापमान"
] ;

List pltitle = [
  "Place",
  "स्थान"
];

List soil = [
  "Soil",
  "मिट्टी"
];
List crop = [
  "Crops",
  "फसलें"
];
List chosencrop = [
  "<Chosen Crop>",
"<चुना फसल>"
];
List phtitle = [
  "Phone",
  "फ़ोन"
];
List analysis = [
"<Analysis>",
" <विश्लेषण> ",
];

List waterreq = [ "Water Required" , "पानी की आवश्यकता"];
List infections = ["Infections", "संक्रमण"
];

List harvesttime = ["Harvest Time" , "फसल का समय"];
List additional = ["Additional" , "अतिरिक्त" ];

List protitle = [
  "Profile",
  "प्रोफ़ाइल"
];
List knowtext = [
  "Know More",
  "अधिक जानिए",
];

List text252 = [
  "We aim to help our farmers by providing them with the right kind of data and information that one must have to do better in their field!",
  "हम अपने किसानों को सही प्रकार के डेटा और जानकारी प्रदान करके उनकी मदद करना चाहते हैं, जो अपने क्षेत्र में बेहतर करना होगा!",
];

List text272 = [
  "Important information for growth and development, helps understand the advantages and opportunities available.",
  "विकास और विकास के लिए महत्वपूर्ण जानकारी, उपलब्ध लाभों और अवसरों को समझने में मदद करती है।"
];

List text274 = [
  "Helpful documents, government plans and schemes, subsidiaries, NGOs and more!",
  "सहायक दस्तावेज, सरकारी योजनाएं और योजनाएं, सहायक, एनजीओ और बहुत कुछ!",
];

List text287 = [
  "Updates about the current information of your crops, as found and sensed by the installed sensors.",
  "स्थापित सेंसर द्वारा आपकी फसलों की वर्तमान जानकारी के बारे में अपडेट, जैसा कि पाया और होश में है।",
];

List text289 = [
  "Real time details of the temperature, humidity, rainfall and more!",
  "तापमान, आर्द्रता, वर्षा और अधिक का वास्तविक समय विवरण!",
];

List text302 = [
  "Useful tool to plan future care for your crops and soil according to the predictions made by our models.",
  "हमारे मॉडल द्वारा की गई भविष्यवाणियों के अनुसार अपनी फसलों और मिट्टी की भविष्य की देखभाल करने के लिए उपयोगी उपकरण।",
];

List text304 = [
  "Combines real time data and known information about the crop/soil used to give predictions about the life and requirements of the crop!",
  "वास्तविक समय के आंकड़ों और फसल / मिट्टी के बारे में ज्ञात जानकारी का उपयोग फसल के जीवन और आवश्यकताओं के बारे में भविष्यवाणियां करने के लिए करता है!",
];

List actstitle = [
  "Acts & Rules",
  "कार्य और नियम",
];

List schemestitle = [
  "Schemes",
  "योजनाएं",
];

List statstitle = [
  "Statistics",
  "आंकड़े",
];
List awarenesstitle = [
      "Awareness ",
      "जागरूकता ",
];

List realtimetitle = [
  "Real Time Data",
  "वास्तविक समय डेटा"
];

List predititle = [
  "Predictive Analysis",
  "भविष्य विश्लेषण"
];

List abttitle = [
  "About",
  "इसके बारे में"
];

List gototitle = [
 "Go To",
 "क्लिक करें"
];

class AwarenessInfo {
  AwarenessInfo(this.lang);

  final List<Lang> lang;
}

class Lang {
  Lang({
    this.name,
    this.iconImage,
    this.description,
  });
  final String name;
  final String iconImage;
  final String description;
}

List<AwarenessInfo> awareinfo = [
  AwarenessInfo([
    Lang(
      name: 'Acts and Rules',
      iconImage: 'assets/images/doc.png',
      description:
          "The rights and duties of the farmers as proposed by the government and written in rules. Must need knowledge on agricultural prices and practices, allowed and disallowed marketing techniques.",
    ),
    Lang(
      name: 'Schemes',
      iconImage: 'assets/images/info.png',
      description: "Important updates on the various schemes and practices one can apply to their agricultural methods, different methods that may help one bolster their crop growth.",
    ),
    Lang(
      name: 'Statistics',
      iconImage: 'assets/images/stats.png',
      description: "Information about the state wise production of various crops and subsequent land allotment to each crop",
    ),
  ]),
  AwarenessInfo([
Lang(
      name: 'कार्य और नियम',
      iconImage: 'assets/images/doc.png',
      description:
          "सरकार द्वारा प्रस्तावित और लिखित नियमों के अनुसार किसानों के अधिकार और कर्तव्य। कृषि की कीमतों और प्रथाओं पर ज्ञान, अनुमति और अस्वीकृत विपणन तकनीकों की आवश्यकता होनी चाहिए।",
    ),
    Lang(
      name: 'योजनाएं',
      iconImage: 'assets/images/info.png',
      description: "विभिन्न योजनाओं और प्रथाओं पर महत्वपूर्ण अपडेट उनके कृषि विधियों, विभिन्न तरीकों पर लागू हो सकते हैं जो एक फसल की वृद्धि में मदद कर सकते हैं।",
    ),
    Lang(
      name: 'आंकड़े',
      iconImage: 'assets/images/stats.png',
      description: "विभिन्न फसलों के राज्यवार उत्पादन और प्रत्येक फसल के लिए भूमि आवंटन के बारे में जानकारी",
    ),
  ]),
];

/*List<AwarenessInfo> awareness = [
  AwarenessInfo([
    Lang(
      name: 'Acts and Rules',
      iconImage: 'assets/images/doc.png',
      description: "Zipping around the suth's moon. Because its so",
    ),
    Lang(
      name: 'Schemes',
      iconImage: 'assets/images/info.png',
      description: "The second hat  spins slowly  of the other planets.",
    ),
    Lang(
      name: 'Statistics',
      iconImage: 'assets/images/stats.png',
      description: "The third planean 18 miles per second (29 km per second).",
    ), 
  ]),
  AwarenessInfo( [
    Lang(
      name: 'अधिनियम और नियम ',
      iconImage: 'assets/images/doc.png',
      description: "Zipping around the suth's moon. Because its so",
    ),
    Lang(
      name: 'योजनाएं',
      iconImage: 'assets/images/info.png',
      description: "The second hat  spins slowly  of the other planets.",
    ),
    Lang(
      name: 'आंकड़े',
      iconImage: 'assets/images/stats.png',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
  ]),
];
*/
class ActsNRules {
  ActsNRules(this.lang);

  final List<Lang> lang;
}

List<ActsNRules> acts = [
  ActsNRules([
    Lang(
      name: 'Produce Trade and Commerce',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/e_Gazettee_The%20Farmers_Produce_Trade_and_Commerce_Promotion_and_Facilitation_%20Rules_2020_1.pdf',
      description: "Zipping around the suth's moon. Because its so",
    ),
    Lang(
      name: ' Agreement on price assurance and farm services ',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Act-2020-Contract-Farming-27-09-2020.pdf',
      description: "The second hat  spins slowly  of the other planets.",
    ),
    Lang(
      name: ' Produce trade and commerce promotion and facilitation',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Act-2020-Trade%26Commerce-27-09-2020.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' Organic Agricultural Produce Grading and Marking',
      iconImage: 'http://agricoop.nic.in/sites/default/files/efinalorg.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' Model Agricultural Produce Market Committee Rules',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/FinalDraftRules2007.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' Model Agricultural Produce and Livestock Marketing',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/APLM_ACT_2017_0.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' General Grading & Marking Rules 1988 ',
      iconImage: 'http://agricoop.nic.in/sites/default/files/gmr1988.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
  ]),
  ActsNRules([
    Lang(
      name: 'उत्पादन व्यापार और वाणिज्य',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/e_Gazettee_The%20Farmers_Produce_Trade_and_Commerce_Promotion_and_Facilitation_%20Rules_2020_1.pdf',
      description: "Zipping around the suth's moon. Because its so",
    ),
    Lang(
      name: 'मूल्य आश्वासन और कृषि सेवाओं पर समझौता ',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Act-2020-Contract-Farming-27-09-2020.pdf',
      description: "The second hat  spins slowly  of the other planets.",
    ),
    Lang(
      name: ' व्यापार और वाणिज्य संवर्धन और सुविधा का उत्पादन करें',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Act-2020-Trade%26Commerce-27-09-2020.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' जैविक कृषि उपज ग्रेडिंग और अंकन',
      iconImage: 'http://agricoop.nic.in/sites/default/files/efinalorg.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' मॉडल कृषि उपज मंडी समिति नियम',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/FinalDraftRules2007.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' मॉडल कृषि उपज और पशुधन विपणन',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/APLM_ACT_2017_0.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' सामान्य ग्रेडिंग और अंकन नियम 1988',
      iconImage: 'http://agricoop.nic.in/sites/default/files/gmr1988.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
  ]),
];

class Schemes {
  Schemes(this.lang);

  final List<Lang> lang;
}

List<Schemes> schemes = [
  Schemes([
    Lang(
      name: 'Agricultural Market',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Agmarknet_Guidelines.pdf',
      description: "Zipping around the suth's moon. Because its so",
    ),
    Lang(
      name: ' Horticulture',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/midh_Guidelines.pdf',
      description: "The second hat  spins slowly  of the other planets.",
    ),
    Lang(
      name: ' Plant Quarantine Clearance ',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Quarantine_Guidelinespdf.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: '  Pradhanmantri Krishi Sinchayee Yojna ',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Guidelines_PMKSY.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' Jaivik Kheti',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Jaivik_Kheti_Guidelines.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' Direct Benefit Transfer',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Guideline_DBTinAgriculture.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
  ]),
  Schemes([
    Lang(
      name: 'कृषि बाजार',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Agmarknet_Guidelines.pdf',
      description: "Zipping around the suth's moon. Because its so",
    ),
    Lang(
      name: ' बागवानी',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/midh_Guidelines.pdf',
      description: "The second hat  spins slowly  of the other planets.",
    ),
    Lang(
      name: ' संयंत्र संगरोध क्लीयरेंस ',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Quarantine_Guidelinespdf.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: '  प्रधानमंत्री कृषि सिंचाई योजना ',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Guidelines_PMKSY.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' जैविक खेती',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Jaivik_Kheti_Guidelines.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
    Lang(
      name: ' प्रत्यक्ष लाभ अंतरण',
      iconImage:
          'http://agricoop.nic.in/sites/default/files/Guideline_DBTinAgriculture.pdf',
      description: "The third planean 18 miles per second (29 km per second).",
    ),
  ])
];

class Statistics {
  Statistics(this.lang);

  final List<Lang> lang;
}

List<Statistics> statistics = [
  Statistics([
    Lang(
        name: "First Estimate 20-21",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/FirstEstimate2020-21.pdf"),
    Lang(
        name: " Horticultural Statistics at a Glance-2018 ",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/Horticulture%20Statistics%20at%20a%20Glance-2018.pdf"),
    Lang(
        name: "Horticulture Crops for 2019-20 ",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/FirstEstimate2020-21.pdf"),
    Lang(
        name: "Horticulture Crops for 2018-19",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/2019-20%282nd%20Advance%20Estimates%29%20%281%29.pdf"),
    Lang(
        name: "Advance Estimates of crop",
        iconImage:
            "http://agricoop.gov.in/sites/default/files/Time-Series-1st-Adv-Estimate-2019-20-Final-Press.pdf"),
    Lang(
        name: "All-in-one Agricultural Stats 2018",
        iconImage:
            "http://agricoop.gov.in/sites/default/files/agristatglance2018.pdf"),
    Lang(
        name:
            " Monthly Reports on Onion, Potato and Tomato for the month of January, 2020. ",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/ilovepdf_merged_3.pdf"),
    Lang(
        name:
            " Monthly Reports on Onion, Potato and Tomato for the month of February, 2020 ",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/ilovepdf_merged_2.pdf"),
    Lang(
        name:
            " Monthly Reports on Onion, Potato and Tomato for the month of March, 2020 ",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/ilovepdf_merged%20%281%29.pdf")
  ]),
  Statistics([
    Lang(
        name: "पहला अनुमान 20-21",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/FirstEstimate2020-21.pdf"),
    Lang(
        name: " एक नज़र 2018 में बागवानी सांख्यिकी ",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/Horticulture%20Statistics%20at%20a%20Glance-2018.pdf"),
    Lang(
        name: "2019-20 के लिए बागवानी फसलें ",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/FirstEstimate2020-21.pdf"),
    Lang(
        name: "2018-19 के लिए बागवानी फसलें",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/2019-20%282nd%20Advance%20Estimates%29%20%281%29.pdf"),
    Lang(
        name: "फसल का अग्रिम अनुमान",
        iconImage:
            "http://agricoop.gov.in/sites/default/files/Time-Series-1st-Adv-Estimate-2019-20-Final-Press.pdf"),
    Lang(
        name: "ऑल-इन-वन कृषि आँकड़े 2018",
        iconImage:
            "http://agricoop.gov.in/sites/default/files/agristatglance2018.pdf"),
    Lang(
        name:
            "जनवरी, 2020 के महीने के लिए प्याज, आलू और टमाटर पर मासिक रिपोर्ट। ",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/ilovepdf_merged_3.pdf"),
    Lang(
        name:
            " फरवरी, 2020 के महीने के लिए प्याज, आलू और टमाटर पर मासिक रिपोर्ट",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/ilovepdf_merged_2.pdf"),
    Lang(
        name:
            " मार्च, 2020 के महीने के लिए प्याज, आलू और टमाटर पर मासिक रिपोर्ट",
        iconImage:
            "http://agricoop.nic.in/sites/default/files/ilovepdf_merged%20%281%29.pdf"),
  ]),
];
