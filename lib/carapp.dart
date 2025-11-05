import 'package:flutter/material.dart';

// 🧱 Car Model Class
class CarModel {
  final String name;
  final String model;
  final double price;
  final String imageUrl;

  CarModel({
    required this.name,
    required this.model,
    required this.price,
    required this.imageUrl,
  });
}

void main() {
  runApp(const CarApp());
}

class CarApp extends StatelessWidget {
  const CarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CarTableScreen(),
    );
  }
}

class CarTableScreen extends StatefulWidget {
  const CarTableScreen({super.key});

  @override
  State<CarTableScreen> createState() => _CarTableScreenState();
}

class _CarTableScreenState extends State<CarTableScreen> {
  final TextEditingController _searchController = TextEditingController();

  // ✅ Car List
  final List<CarModel> _allCars = [
    CarModel(
      name: "Tesla Model S",
      model: "2024",
      price: 95000,
      imageUrl:
          "https://media.ed.edmunds-media.com/tesla/model-y/2026/oem/2026_tesla_model-y_4dr-suv_long-range-launch-series_fq_oem_1_500.jpg",
    ),
    CarModel(
      name: "BMW i8",
      model: "2023",
      price: 145000,
      imageUrl:
          "https://cdn.motor1.com/images/mgl/eqPzp/s1/bmw-i8-roadster.jpg",
    ),
    CarModel(
      name: "Audi R8",
      model: "2024",
      price: 200000,
      imageUrl:
          "https://cdn.motor1.com/images/mgl/P33Jx/s1/audi-r8-coupe-v10-performance.jpg",
    ),
    CarModel(
      name: "Mercedes AMG GT",
      model: "2023",
      price: 180000,
      imageUrl:
          "https://cdn.motor1.com/images/mgl/2xA0v/s1/mercedes-amg-gt-coupe.jpg",
    ),
    CarModel(
      name: "Porsche 911",
      model: "2024",
      price: 210000,
      imageUrl:
          "https://cdn.motor1.com/images/mgl/q44ZM/s1/porsche-911-carrera-gts.jpg",
    ),
    CarModel(
      name: "Lamborghini Huracan",
      model: "2024",
      price: 320000,
      imageUrl:
          "https://cdn.motor1.com/images/mgl/eeWZx/s1/lamborghini-huracan-evo.jpg",
    ),
  ];

  List<CarModel> _filteredCars = [];

  int? _sortColumnIndex;
  bool _isAscending = true;

  @override
  void initState() {
    super.initState();
    _filteredCars = List.from(_allCars);
    _searchController.addListener(_filterCars);
  }

  // 🔍 Search logic
  void _filterCars() {
    String query = _searchController.text.trim().toLowerCase();
    setState(() {
      _filteredCars = _allCars
          .where(
            (car) =>
                car.name.toLowerCase().contains(query) ||
                car.model.toLowerCase().contains(query) ||
                car.price.toString().toLowerCase().contains(query),
          )
          .toList();
    });
  }

  // 🔢 Sort logic
  void _sort<T>(
    Comparable<T> Function(CarModel car) getField,
    int columnIndex,
    bool ascending,
  ) {
    _filteredCars.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });

    setState(() {
      _sortColumnIndex = columnIndex;
      _isAscending = ascending;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        title: const Text('Car Product Table 🚘'),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            // 🔍 Search Bar
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search by name, model, or price...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // 📋 DataTable with Image
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    sortColumnIndex: _sortColumnIndex,
                    sortAscending: _isAscending,
                    border: TableBorder.all(color: Colors.grey.shade300),
                    columns: [
                      const DataColumn(
                        label: Text(
                          'Image',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: const Text(
                          'Car Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        onSort: (index, asc) =>
                            _sort((car) => car.name, index, asc),
                      ),
                      DataColumn(
                        label: const Text(
                          'Model',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        onSort: (index, asc) =>
                            _sort((car) => car.model, index, asc),
                      ),
                      DataColumn(
                        label: const Text(
                          'Price',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        numeric: true,
                        onSort: (index, asc) =>
                            _sort((car) => car.price, index, asc),
                      ),
                    ],
                    rows: _filteredCars
                        .map(
                          (car) => DataRow(
                            cells: [
                              DataCell(
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    car.imageUrl,
                                    width: 80,
                                    height: 50,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return Center(child: Text("-"));
                                    },
                                  ),
                                ),
                              ),
                              DataCell(Text(car.name)),
                              DataCell(Text(car.model)),
                              DataCell(
                                Text("\$${car.price.toStringAsFixed(0)}"),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
