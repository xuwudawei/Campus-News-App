import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:python_project/src/providers/allOpportunitiesProvider.dart';
import 'package:python_project/src/widgets/user/homePage/SubPages/AllOpportunitiesTile.dart';
//List<OpportunityModel> allOpportunities = new List<OpportunityModel>();

class AllOpportunities extends StatefulWidget {
  @override
  _AllOpportunitiesState createState() => _AllOpportunitiesState();
}

class _AllOpportunitiesState extends State<AllOpportunities> {
  @override
  // void initState() {
  //   super.initState();
  //   allOpportunities = getAllOpportunities();
  // }

  Widget build(BuildContext context) {
    final opportunity = Provider.of<OpportunityInfoProvider>(context);
    return Container(
      child: ListView.builder(
        itemCount: opportunity.getOpportunityList.length,
        itemBuilder: (context, index) {
          return AllOpportunitiesTile(
            image: opportunity.getOpportunityList[index].image,
            title: opportunity.getOpportunityList[index].title,
            date: opportunity.getOpportunityList[index].date,
            content: opportunity.getOpportunityList[index].content,
            url: opportunity.getOpportunityList[index].url,
          );
        },
      ),
    );
  }
}

// Widget TopOpportunitiesCard() {
//   return Card(
//     elevation: 10,
//     child: Column(
//       children: <Widget>[
//         CachedNetworkImage(
//           imageUrl: allOpportunities[0].image,
//           fit: BoxFit.cover,
//           height: 200,
//         ),
//         Padding(
//           padding: EdgeInsets.only(top: 5),
//         ),
//         Text(
//           allOpportunities[0].title,
//         ),
//       ],
//     ),
//   );
// }
