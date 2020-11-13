class AwarenessInfo
{
  final int position;
  final String name;
  final String iconImage;
  final String description;

  AwarenessInfo(
    this.position,
      {
        this.name,
        this.iconImage,
        this.description,
      });
}

List<AwarenessInfo> awareness = [
  AwarenessInfo(1,
      name: 'Acts and Rules',
      iconImage: 'assets/images/doc.png',
      description:
          "The rights and duties of the farmers as proposed by the government",
  ),
  AwarenessInfo(2,
      name: 'Schemes',
      iconImage: 'assets/images/info.png',
      description:
          "Important update on schemes and more so",
  ),
  AwarenessInfo(3,
      name: 'Statistics',
      iconImage: 'assets/images/stats.png',
      description:
          "Information about production of various crops(State-Wise) , land allotment to each crop",
      ),
];

class ActsNRules {
  final String name;
  final String link;
  final String description;

  ActsNRules(
     {
    this.name,
    this.link,
    this.description,
  });
}

List<ActsNRules> acts = [
  ActsNRules(
      name: 'Produce Trade and Commerce',
      link: 'http://agricoop.nic.in/sites/default/files/e_Gazettee_The%20Farmers_Produce_Trade_and_Commerce_Promotion_and_Facilitation_%20Rules_2020_1.pdf',
      description:
          "Zipping around the suth's moon. Because its so",
     ),
  ActsNRules(
      name: ' Agreement on price assurance and farm services ',
      link: 'http://agricoop.nic.in/sites/default/files/Act-2020-Contract-Farming-27-09-2020.pdf',
      description:
          "The second hat  spins slowly  of the other planets.",
      ),
  ActsNRules(
      name: ' Produce trade and commerce promotion and facilitation',
      link: 'http://agricoop.nic.in/sites/default/files/Act-2020-Trade%26Commerce-27-09-2020.pdf',
      description:
          "The third planean 18 miles per second (29 km per second).",
      ),
      ActsNRules(
      name: ' Organic Agricultural Produce Grading and Marking',
      link: 'http://agricoop.nic.in/sites/default/files/efinalorg.pdf',
      description:
          "The third planean 18 miles per second (29 km per second).",
      ),
      ActsNRules(
      name: ' Model Agricultural Produce Market Committee Rules',
      link: 'http://agricoop.nic.in/sites/default/files/FinalDraftRules2007.pdf',
      description:
          "The third planean 18 miles per second (29 km per second).",
      ),
      ActsNRules(
      name: ' Model Agricultural Produce and Livestock Marketing',
      link: 'http://agricoop.nic.in/sites/default/files/APLM_ACT_2017_0.pdf',
      description:
          "The third planean 18 miles per second (29 km per second).",
      ),
      ActsNRules(
      name: ' General Grading & Marking Rules 1988 ',
      link: 'http://agricoop.nic.in/sites/default/files/gmr1988.pdf',
      description:
          "The third planean 18 miles per second (29 km per second).",
      ),
];

class Schemes {
  final String name;
  final String link;
  final String description;

  Schemes(
     {
    this.name,
    this.link,
    this.description,
  });
}

List<Schemes> schemes = [
  Schemes(
      name: 'Agricultural Market',
      link: 'http://agricoop.nic.in/sites/default/files/Agmarknet_Guidelines.pdf',
      description:
          "Zipping around the suth's moon. Because its so",
     ),
  Schemes(
      name: ' Horticulture',
      link: 'http://agricoop.nic.in/sites/default/files/midh_Guidelines.pdf',
      description:
          "The second hat  spins slowly  of the other planets.",
      ),
  Schemes(
      name: ' Plant Quarantine Clearance ',
      link: 'http://agricoop.nic.in/sites/default/files/Quarantine_Guidelinespdf.pdf',
      description:
          "The third planean 18 miles per second (29 km per second).",
      ),
      Schemes(
      name: '  Pradhanmantri Krishi Sinchayee Yojna ',
      link: 'http://agricoop.nic.in/sites/default/files/Guidelines_PMKSY.pdf',
      description:
          "The third planean 18 miles per second (29 km per second).",
      ),
      Schemes(
      name: ' Jaivik Kheti',
      link: 'http://agricoop.nic.in/sites/default/files/Jaivik_Kheti_Guidelines.pdf',
      description:
          "The third planean 18 miles per second (29 km per second).",
      ),
      Schemes(
      name: ' Direct Benefit Transfer',
      link: 'http://agricoop.nic.in/sites/default/files/Guideline_DBTinAgriculture.pdf',
      description:
          "The third planean 18 miles per second (29 km per second).",
      ),
];


class Statistics {
  final String name;
  final String link;
 

  Statistics(
     {
    this.name,
    this.link,
   
  });
}

List<Statistics> statistics = [
  Statistics(
  name : "First Estimate 20-21",
  link: "http://agricoop.nic.in/sites/default/files/FirstEstimate2020-21.pdf"),
  Statistics(
  name : " Horticultural Statistics at a Glance-2018 ",
  link: "http://agricoop.nic.in/sites/default/files/Horticulture%20Statistics%20at%20a%20Glance-2018.pdf"),
  Statistics(
  name : "Horticulture Crops for 2019-20 ",
  link: "http://agricoop.nic.in/sites/default/files/FirstEstimate2020-21.pdf"),
  Statistics(
  name : "Horticulture Crops for 2018-19",
  link: "http://agricoop.nic.in/sites/default/files/2019-20%282nd%20Advance%20Estimates%29%20%281%29.pdf"),
  Statistics(
  name : "Advance Estimates of crop",
  link: "http://agricoop.gov.in/sites/default/files/Time-Series-1st-Adv-Estimate-2019-20-Final-Press.pdf"),
  Statistics(
  name : "All-in-one Agricultural Stats 2018",
  link: "http://agricoop.gov.in/sites/default/files/agristatglance2018.pdf"),
  
  Statistics(
  name : " Monthly Reports on Onion, Potato and Tomato for the month of January, 2020. ",
  link: "http://agricoop.nic.in/sites/default/files/ilovepdf_merged_3.pdf"),
  Statistics(
  name : " Monthly Reports on Onion, Potato and Tomato for the month of February, 2020 ",
  link: "http://agricoop.nic.in/sites/default/files/ilovepdf_merged_2.pdf"),
  Statistics(
  name : " Monthly Reports on Onion, Potato and Tomato for the month of March, 2020 ",
  link: "http://agricoop.nic.in/sites/default/files/ilovepdf_merged%20%281%29.pdf"),
];