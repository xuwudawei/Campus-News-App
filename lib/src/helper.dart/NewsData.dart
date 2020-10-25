// import 'dart:convert';

// import 'package:python_project/src/widgets/user/homePage/SubPages/allNews.dart';

// import '../models/news_model.dart';
// import 'package:http/http.dart' as http;

// List<NewsModel> allNews = new List<NewsModel>();

// List<NewsModel> getAllNews()
//   List<NewsModel> allNews = new List<NewsModel>();
//   NewsModel newsModel = new NewsModel();

//   //1
//   newsModel = new NewsModel();
//   newsModel.title = "LPUNEST Study Grant 2nd Edition";
//   newsModel.description =
//       "Lovely Professional University strongly believes in the fact that monetary constraints should not be an obstacle for a student to have access to quality education. ";
//   newsModel.url = "https://www.lpu.in/studygrant/";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """Lovely Professional University strongly believes in the fact that monetary constraints should not be an obstacle for a student to have access to quality education. So, the University extends Scholarship Scheme to students for studying in LPU on various parameters like performance in qualifying examination (10+2 or graduation), LPUNEST (LPU National Entrance and Scholarship Test), Sports, Cultural, R & D, Co-curricular, Social Service and Bravery Awards. There are other special scholarships also for orphans, physically handicapped or students from Defence and Armed Services background. In augmenting this spirit for the pursuit of quality education for all, LPU constantly expands its scholarships and financial assistance schemes.
// Lovely Professional University launched ‘LPUNEST Study Grant 1st Edition’ in 2019 by expanding the purview of financial assistance to reward deserving and meritorious students even if they are not studying at LPU. The focus of ‘LPUNEST Study Grant 2nd Edition’ is to further establish its commitment towards rewarding deserving and meritorious students. """;
//   newsModel.image = "https://www.lpu.in/images/studygrant-1.jpg";
//   newsModel.category = "Scholarships";
//   allNews.add(newsModel);

//   //2
//   newsModel = new NewsModel();
//   newsModel.category = "Achievements";
//   newsModel.title =
//       "Amazon-Alexa Declared LPU Student Aditya Channe as India’s Top ‘Student Influencer of the Year-2019’";
//   newsModel.description =
//       "LPU student Aditya Channe declared as India’s top ‘Student Influencer of the Year-2019’ by the world's top voice developers Amazon-Alexa. Mr Prem Natrajan, Vice-President Alexa Artificial Intelligence & Head Natural Understanding, USA and Mr Ashish Gupta, CEO PolicyBazaar (Group) honoured the LPU student. ";
//   newsModel.url = "http://happenings.lpu.in/amazon-alexa-honoured-lpu-student/";
//   newsModel.image = "https://www.lpu.in/images/student-influence.jpg";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """World’s top “Voice Developers” Amazon-Alexa has unitedly declared LPU student as India’s top ‘Student Influencer of the Year-2019’. In this regard, the Vice-President of Alexa Artificial Intelligence & Head Natural Understanding at Alexa in the USA, Mr Prem Natrajan & CEO PolicyBazaar (Group) Mr Ashish Gupta honoured LPU student. Presently, B Tech ECE seventh semester student, Aditya Channe has won Trophy, Alexa Echo Show Device, Internship and Service with Amazon-Alexa, in future. Aditya Channe excelled competing students from across India and particularly those from top institutions including IIT (Indore), Manipal, VIT, Delhi University and many more.
// Alexa Student Influencer is a leader, who is ever zealous to learn new technologies in Artificial Intelligence (AI) and Voice Technologies; and, Aditya Channe at LPU is working passionately for upcoming revolutionary transformation in the realms of technologies. He is a ‘Quick learner and a Tech Enthusiast’. Believing firmly that ‘voice’ is the next big revolution, he is working hard to build a community of “Alexa Developers” to learn and join upcoming transformation together. His team of LPU students has also been declared as the “Best Community” in the country. LPU Chancellor Mr Ashok Mittal has congratulated Aditya and his team members for bringing glory to the university and themselves.""";
//   allNews.add(newsModel);

//   //3
//   newsModel = new NewsModel();
//   newsModel.category = "Events";
//   newsModel.title = "Award Ceremony of LPUNEST Study Grant 1st Edition";
//   newsModel.description =
//       "Hon’ble Union Minister of Human Resource Development, Government of India, Ramesh Pokhriyal ‘Nishank’ visited Lovely Professional University (LPU) on 6th November, 2019 where Mr. Minister distributed LPU’s Study Grant of Rs 4.1 Crore to 295 meritorious students of the country.";
//   newsModel.url = "https://www.lpu.in/studygrant/";
//   newsModel.image = "https://www.lpu.in/images/studygrant-2019.jpg";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """ Under ‘LPUNEST Study Grant’ students can avail financial assistance to study at higher education institutions other than LPU. In LPUNEST Study Grant 1st Edition, Lovely Professional University had provided study grant worth Rs.4 Crore to deserving students.
// Qualifying LPUNEST exam can get a deserving candidate a study grant of Rs.1 Lac even if one intends to study in other educational institutions like IITs/ NITs/ NLUs/ IHMs/ NIDs/ IITs( DoD/ IDC)/ IIITDM/ NIFTs OR get admission to LPU programmes and avail scholarship of upto Rs.4 Lac per student.""";
//   allNews.add(newsModel);

//   //4
//   newsModel = new NewsModel();
//   newsModel.category = "Innovations";
//   newsModel.title =
//       "India's first-ever self-driving, solar-powered bus hits the road";
//   newsModel.description =
//       "Engineering Students at Lovely Professional University (LPU) have designed and created a India's first solar-powered, driverless bus. The bus is completely pollution-free and uses only renewable energy in the form of electric motor and solar power for propulsion.";
//   newsModel.url =
//       "https://www.theweek.in/news/sci-tech/2019/01/04/India-first-ever-self-driving-solar-powered-bus-hits-the-road.html";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """India's first solar-powered, driverless bus made its maiden journey at the Indian Science Congress on Thursday.
// The bus, designed and built by a team of students of Lovely Professional University (LPU) at Jalandhar, uses GPS and Bluetooth for navigation. ''The camera installed on top of the bus allows for image processing. It senses the road pattern and the bus moves accordingly,'' said Mandeep Singh, project head, Solar Driverless Bus at LPU. """;
//   newsModel.image =
//       "https://img.theweek.in/content/dam/week/news/sci-tech/2018/january/electric-bus-self-driving-india-lpu-punjab.jpg";
//   allNews.add(newsModel);

//   //5
//   newsModel = new NewsModel();
//   newsModel.category = "Innovations";
//   newsModel.title =
//       "India's first-ever self-driving, solar-powered bus hits the road";
//   newsModel.description =
//       "Engineering Students at Lovely Professional University (LPU) have designed and created a India's first solar-powered, driverless bus. The bus is completely pollution-free and uses only renewable energy in the form of electric motor and solar power for propulsion.";
//   newsModel.url =
//       "https://www.theweek.in/news/sci-tech/2019/01/04/India-first-ever-self-driving-solar-powered-bus-hits-the-road.html";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """India's first solar-powered, driverless bus made its maiden journey at the Indian Science Congress on Thursday.
// The bus, designed and built by a team of students of Lovely Professional University (LPU) at Jalandhar, uses GPS and Bluetooth for navigation. ''The camera installed on top of the bus allows for image processing. It senses the road pattern and the bus moves accordingly,'' said Mandeep Singh, project head, Solar Driverless Bus at LPU. """;
//   newsModel.image =
//       "https://img.theweek.in/content/dam/week/news/sci-tech/2018/january/electric-bus-self-driving-india-lpu-punjab.jpg";
//   allNews.add(newsModel);

//   //6
//   newsModel = new NewsModel();
//   newsModel.category = "Innovations";
//   newsModel.title =
//       "India's first-ever self-driving, solar-powered bus hits the road";
//   newsModel.description =
//       "Engineering Students at Lovely Professional University (LPU) have designed and created a India's first solar-powered, driverless bus. The bus is completely pollution-free and uses only renewable energy in the form of electric motor and solar power for propulsion.";
//   newsModel.url =
//       "https://www.theweek.in/news/sci-tech/2019/01/04/India-first-ever-self-driving-solar-powered-bus-hits-the-road.html";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """India's first solar-powered, driverless bus made its maiden journey at the Indian Science Congress on Thursday.
// The bus, designed and built by a team of students of Lovely Professional University (LPU) at Jalandhar, uses GPS and Bluetooth for navigation. ''The camera installed on top of the bus allows for image processing. It senses the road pattern and the bus moves accordingly,'' said Mandeep Singh, project head, Solar Driverless Bus at LPU. """;
//   newsModel.image =
//       "https://img.theweek.in/content/dam/week/news/sci-tech/2018/january/electric-bus-self-driving-india-lpu-punjab.jpg";
//   allNews.add(newsModel);

//   //7
//   newsModel = new NewsModel();
//   newsModel.category = "Innovations";
//   newsModel.title =
//       "India's first-ever self-driving, solar-powered bus hits the road";
//   newsModel.description =
//       "Engineering Students at Lovely Professional University (LPU) have designed and created a India's first solar-powered, driverless bus. The bus is completely pollution-free and uses only renewable energy in the form of electric motor and solar power for propulsion.";
//   newsModel.url =
//       "https://www.theweek.in/news/sci-tech/2019/01/04/India-first-ever-self-driving-solar-powered-bus-hits-the-road.html";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """India's first solar-powered, driverless bus made its maiden journey at the Indian Science Congress on Thursday.
// The bus, designed and built by a team of students of Lovely Professional University (LPU) at Jalandhar, uses GPS and Bluetooth for navigation. ''The camera installed on top of the bus allows for image processing. It senses the road pattern and the bus moves accordingly,'' said Mandeep Singh, project head, Solar Driverless Bus at LPU. """;
//   newsModel.image =
//       "https://img.theweek.in/content/dam/week/news/sci-tech/2018/january/electric-bus-self-driving-india-lpu-punjab.jpg";
//   allNews.add(newsModel);

//   //8
//   newsModel = new NewsModel();
//   newsModel.category = "Innovations";
//   newsModel.title =
//       "India's first-ever self-driving, solar-powered bus hits the road";
//   newsModel.description =
//       "Engineering Students at Lovely Professional University (LPU) have designed and created a India's first solar-powered, driverless bus. The bus is completely pollution-free and uses only renewable energy in the form of electric motor and solar power for propulsion.";
//   newsModel.url =
//       "https://www.theweek.in/news/sci-tech/2019/01/04/India-first-ever-self-driving-solar-powered-bus-hits-the-road.html";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """India's first solar-powered, driverless bus made its maiden journey at the Indian Science Congress on Thursday.
// The bus, designed and built by a team of students of Lovely Professional University (LPU) at Jalandhar, uses GPS and Bluetooth for navigation. ''The camera installed on top of the bus allows for image processing. It senses the road pattern and the bus moves accordingly,'' said Mandeep Singh, project head, Solar Driverless Bus at LPU. """;
//   newsModel.image =
//       "https://img.theweek.in/content/dam/week/news/sci-tech/2018/january/electric-bus-self-driving-india-lpu-punjab.jpg";
//   allNews.add(newsModel);

//   //9
//   newsModel = new NewsModel();
//   newsModel.category = "Innovations";
//   newsModel.title =
//       "India's first-ever self-driving, solar-powered bus hits the road";
//   newsModel.description =
//       "Engineering Students at Lovely Professional University (LPU) have designed and created a India's first solar-powered, driverless bus. The bus is completely pollution-free and uses only renewable energy in the form of electric motor and solar power for propulsion.";
//   newsModel.url =
//       "https://www.theweek.in/news/sci-tech/2019/01/04/India-first-ever-self-driving-solar-powered-bus-hits-the-road.html";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """India's first solar-powered, driverless bus made its maiden journey at the Indian Science Congress on Thursday.
// The bus, designed and built by a team of students of Lovely Professional University (LPU) at Jalandhar, uses GPS and Bluetooth for navigation. ''The camera installed on top of the bus allows for image processing. It senses the road pattern and the bus moves accordingly,'' said Mandeep Singh, project head, Solar Driverless Bus at LPU. """;
//   newsModel.image =
//       "https://img.theweek.in/content/dam/week/news/sci-tech/2018/january/electric-bus-self-driving-india-lpu-punjab.jpg";
//   allNews.add(newsModel);

//   //10
//   newsModel = new NewsModel();
//   newsModel.category = "Innovations";
//   newsModel.title =
//       "India's first-ever self-driving, solar-powered bus hits the road";
//   newsModel.description =
//       "Engineering Students at Lovely Professional University (LPU) have designed and created a India's first solar-powered, driverless bus. The bus is completely pollution-free and uses only renewable energy in the form of electric motor and solar power for propulsion.";
//   newsModel.url =
//       "https://www.theweek.in/news/sci-tech/2019/01/04/India-first-ever-self-driving-solar-powered-bus-hits-the-road.html";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """India's first solar-powered, driverless bus made its maiden journey at the Indian Science Congress on Thursday.
// The bus, designed and built by a team of students of Lovely Professional University (LPU) at Jalandhar, uses GPS and Bluetooth for navigation. ''The camera installed on top of the bus allows for image processing. It senses the road pattern and the bus moves accordingly,'' said Mandeep Singh, project head, Solar Driverless Bus at LPU. """;
//   newsModel.image =
//       "https://img.theweek.in/content/dam/week/news/sci-tech/2018/january/electric-bus-self-driving-india-lpu-punjab.jpg";
//   allNews.add(newsModel);

//   //11
//   newsModel = new NewsModel();
//   newsModel.category = "Innovations";
//   newsModel.title =
//       "India's first-ever self-driving, solar-powered bus hits the road";
//   newsModel.description =
//       "Engineering Students at Lovely Professional University (LPU) have designed and created a India's first solar-powered, driverless bus. The bus is completely pollution-free and uses only renewable energy in the form of electric motor and solar power for propulsion.";
//   newsModel.url =
//       "https://www.theweek.in/news/sci-tech/2019/01/04/India-first-ever-self-driving-solar-powered-bus-hits-the-road.html";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """India's first solar-powered, driverless bus made its maiden journey at the Indian Science Congress on Thursday.
// The bus, designed and built by a team of students of Lovely Professional University (LPU) at Jalandhar, uses GPS and Bluetooth for navigation. ''The camera installed on top of the bus allows for image processing. It senses the road pattern and the bus moves accordingly,'' said Mandeep Singh, project head, Solar Driverless Bus at LPU. """;
//   newsModel.image =
//       "https://img.theweek.in/content/dam/week/news/sci-tech/2018/january/electric-bus-self-driving-india-lpu-punjab.jpg";
//   allNews.add(newsModel);

//   //12
//   newsModel = new NewsModel();
//   newsModel.category = "Innovations";
//   newsModel.title =
//       "India's first-ever self-driving, solar-powered bus hits the road";
//   newsModel.description =
//       "Engineering Students at Lovely Professional University (LPU) have designed and created a India's first solar-powered, driverless bus. The bus is completely pollution-free and uses only renewable energy in the form of electric motor and solar power for propulsion.";
//   newsModel.url =
//       "https://www.theweek.in/news/sci-tech/2019/01/04/India-first-ever-self-driving-solar-powered-bus-hits-the-road.html";
//   newsModel.date = DateTime.now();
//   newsModel.content =
//       """India's first solar-powered, driverless bus made its maiden journey at the Indian Science Congress on Thursday.
// The bus, designed and built by a team of students of Lovely Professional University (LPU) at Jalandhar, uses GPS and Bluetooth for navigation. ''The camera installed on top of the bus allows for image processing. It senses the road pattern and the bus moves accordingly,'' said Mandeep Singh, project head, Solar Driverless Bus at LPU. """;
//   newsModel.image =
//       "https://img.theweek.in/content/dam/week/news/sci-tech/2018/january/electric-bus-self-driving-india-lpu-punjab.jpg";
//   allNews.add(newsModel);
//   return allNews;
// }

// class CategoryNewsClass {
//   List<NewsModel> news = [];
//   Future<void> getNews(String category) async {
//     category = category[0].toUpperCase() + category.substring(1);
//     print(category);
//     String url = "http://127.0.0.1:5000/news/category/$category";
//     var response = await http.get(url);
//     var jsonData = jsonDecode(response.body);
//     print(jsonData);
//     allNews.forEach((element) {
//       if (element.image != null && element.title != null) {
//         NewsModel newsModel = NewsModel(
//           title: element.title,
//           description: element.description,
//           content: element.content,
//           url: element.url,
//           image: element.image,
//           //publishedAt: element['publushedAt'],
//         );
//         news.add(newsModel);
//       }
//     });
//   }
// }
