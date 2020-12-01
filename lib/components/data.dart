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
          "The rights and duties of the farmers as proposed by the government and written in rules. Must need knowledge on agricultural prices and practices, allowed and disallowed marketing techniques.",
  ),
  AwarenessInfo(2,
      name: 'Schemes',
      iconImage: 'assets/images/info.png',
      description:
          "Important updates on the various schemes and practices one can apply to their agricultural methods, different methods that may help one bolster their crop growth.",
  ),
  AwarenessInfo(3,
      name: 'Statistics',
      iconImage: 'assets/images/stats.png',
      description:
          "Information about the state wise production of various crops and subsequent land allotment to each crop",
      ),
];

