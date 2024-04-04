import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_list/data/dummy_data.dart';

void main() {
  runApp(const MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  final List<Category> categories = DUMMY_CATEGORIES;
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 254, 211, 245),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 249, 235, 110),
          title: Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: List.generate(DUMMY_CATEGORIES.length, (index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: DUMMY_CATEGORIES[index].color,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  FoodList(category: categories[index])));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        DUMMY_CATEGORIES[index].title,
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              }),
            )),
      ),
    );
  }
}

class FoodList extends StatelessWidget {
  final Category category;
  final List<Meal> foods = DUMMY_MEALS;
  final List<Meal> listFood = [];

  FoodList({Key? key, required this.category});

  @override
  Widget build(BuildContext context) {
    for (var food in DUMMY_MEALS) {
      for (var element in food.categories) {
        if (element == category.id) {
          listFood.add(food);
        }
      }
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 211, 245),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 249, 235, 110),
        title: Text(
          'Quick & Easy',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 1,
            children: List.generate(DUMMY_MEALS.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              FoodItem(food: listFood[index])));
                },
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Image.network(DUMMY_MEALS[index].imageUrl),
                        Container(
                          padding: EdgeInsets.all(26),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.schedule_outlined,
                                    size: 14,
                                  ),
                                  Text(
                                    ' ${DUMMY_MEALS[index].duration} min',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.shopping_bag,
                                    size: 14,
                                  ),
                                  Text(
                                    ' ${DUMMY_MEALS[index].complexity.name}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.attach_money_outlined,
                                    size: 14,
                                  ),
                                  Text(
                                    ' ${DUMMY_MEALS[index].affordability.name}',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration:
                          BoxDecoration(color: Color.fromARGB(170, 61, 61, 61)),
                      margin: EdgeInsets.only(top: 200, left: 130, right: 80),
                      child: Text(
                        '${DUMMY_MEALS[index].title}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              );
            }),
          )),
    );
  }
}

class FoodItem extends StatelessWidget {
  const FoodItem({Key? key, required this.food});

  final Meal food;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          food.title,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 254, 211, 245),
        ),
        width: screenWidth,
        child: Column(
          children: [
            Image.network(
              food.imageUrl,
              fit: BoxFit.fill,
              width: screenWidth,
              height: 300,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                "Ingredients",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: food.ingredients.length,
              padding: const EdgeInsets.all(5),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(5)),
                  padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Text(food.ingredients[index],
                      style:
                          const TextStyle(color: Colors.black, fontSize: 12)),
                );
              },
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Steps",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true, // nén kích thước phù hợp nội dung
                itemCount: food.steps.length,
                padding: const EdgeInsets.all(5),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(50)),
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "# ${index + 1}",
                            style: const TextStyle(
                                color: Colors.white, fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            food.steps[index],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
