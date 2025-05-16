// 1. create proper data with images.
// 2. apply seach filter
// 3. apply voice filter
// 4. add product in cart
// 5. ++ & -- qty
// 6. delete product
// 7. total

// img -

// 3 language - hindi,gujrati,english
// details
// id
// name
// image
// price, price per qty/gm
// company name + description
// tags : []

import "dart:math";

void main() {
  // Example input from user
  String userInput = "wheat"; // try "snack", "nudles", "maggie", etc.

  List<Map<dynamic, dynamic>> filteredProducts = filterByTag(userInput, data);

  print("Products matching '$userInput':");
  for (var product in filteredProducts) {
    print("- ${product['name']}");
  }
}

/// Filters product list by checking similarity with tag names
List<Map<dynamic, dynamic>> filterByTag(
  String input,
  List<Map<dynamic, dynamic>> products,
) {
  const double threshold =
      0.5; // lower = stricter, higher = more lenient (max = 1.0)
  input = input.toLowerCase();

  return products.where((product) {
    List<String> tags = List<String>.from(product['tags']);
    for (var tag in tags) {
      double similarity = calculateSimilarity(input, tag.toLowerCase());
      if (similarity >= threshold) return true;
    }
    return false;
  }).toList();
}

/// Calculates similarity between two strings (1.0 = exact match, 0.0 = very different)
double calculateSimilarity(String s1, String s2) {
  int distance = levenshtein(s1, s2);
  int maxLength = max(s1.length, s2.length);
  if (maxLength == 0) return 1.0; // both strings are empty
  return 1.0 - (distance / maxLength);
}

/// Calculates Levenshtein distance between two strings
int levenshtein(String s1, String s2) {
  List<List<int>> dp = List.generate(
    s1.length + 1,
    (_) => List<int>.filled(s2.length + 1, 0),
  );

  for (int i = 0; i <= s1.length; i++) {
    for (int j = 0; j <= s2.length; j++) {
      if (i == 0)
        dp[i][j] = j;
      else if (j == 0)
        dp[i][j] = i;
      else if (s1[i - 1] == s2[j - 1])
        dp[i][j] = dp[i - 1][j - 1];
      else
        dp[i][j] = 1 + min(dp[i - 1][j], min(dp[i][j - 1], dp[i - 1][j - 1]));
    }
  }

  return dp[s1.length][s2.length];
}

List<Map<dynamic, dynamic>> data = [
  {
    "id": 1,
    "name": "Maggi",
    "description": "Nestle, Instant Noodles",
    "img": "",
    "price": 14.0,
    "price-tagline": "per qty, 48gm",
    "tags": ["maggi", "meggi", "maggie", "noodles", "nudal"],
  },
  {
    "id": 2,
    "name": "Amul Gold",
    "description": "Amul, Pure Milk with High Fat",
    "img": "",
    "price": 36.0,
    "price-tagline": "per qty, 500ml",
    "tags": ["milk", "dudh", "amul gold", "gold"],
  },
  {
    "id": 3,
    "name": "Tata Salt",
    "description": "Iodized Salt for Cooking",
    "img": "",
    "price": 20.0,
    "price-tagline": "per qty, 1kg",
    "tags": ["salt", "namak", "tata"],
  },
  {
    "id": 4,
    "name": "Fortune Oil",
    "description": "Refined Sunflower Oil",
    "img": "",
    "price": 130.0,
    "price-tagline": "per qty, 1L",
    "tags": ["oil", "sunflower", "fortune"],
  },
  {
    "id": 5,
    "name": "Aashirvaad Atta",
    "description": "Whole Wheat Flour",
    "img": "",
    "price": 250.0,
    "price-tagline": "per qty, 5kg",
    "tags": ["atta", "wheat", "flour"],
  },
  {
    "id": 6,
    "name": "Colgate Toothpaste",
    "description": "Dental Cream Toothpaste",
    "img": "",
    "price": 45.0,
    "price-tagline": "per qty, 100gm",
    "tags": ["toothpaste", "colgate", "dental"],
  },
  {
    "id": 7,
    "name": "Dove Soap",
    "description": "Moisturizing Beauty Soap",
    "img": "",
    "price": 38.0,
    "price-tagline": "per qty, 75gm",
    "tags": ["soap", "dove", "beauty"],
  },
  {
    "id": 8,
    "name": "Parle-G Biscuits",
    "description": "Glucose Biscuits Pack",
    "img": "",
    "price": 10.0,
    "price-tagline": "per qty, 100gm",
    "tags": ["biscuits", "parle", "snacks"],
  },
  {
    "id": 9,
    "name": "Red Label Tea",
    "description": "Brooke Bond Loose Tea",
    "img": "",
    "price": 140.0,
    "price-tagline": "per qty, 500gm",
    "tags": ["tea", "chai", "red label", "red"],
  },
  {
    "id": 10,
    "name": "Nescafe Classic",
    "description": "Instant Coffee Powder",
    "img": "",
    "price": 80.0,
    "price-tagline": "per qty, 50gm",
    "tags": ["coffee", "nescafe", "instant"],
  },
  {
    "id": 11,
    "name": "Haldiram's Bhujia",
    "description": "Spicy Namkeen Snack",
    "img": "",
    "price": 45.0,
    "price-tagline": "per qty, 200gm",
    "tags": ["namkeen", "snacks", "haldiram"],
  },
  {
    "id": 12,
    "name": "Dettol Handwash",
    "description": "Liquid Handwash Refill",
    "img": "",
    "price": 85.0,
    "price-tagline": "per qty, 750ml",
    "tags": ["dettol", "handwash", "soap"],
  },
  {
    "id": 13,
    "name": "Comfort Fabric Conditioner",
    "description": "After Wash Fabric Softener",
    "img": "",
    "price": 190.0,
    "price-tagline": "per qty, 860ml",
    "tags": ["comfort", "fabric", "softener"],
  },
  {
    "id": 14,
    "name": "Lizol Floor Cleaner",
    "description": "Cleans & Disinfects Floors",
    "img": "",
    "price": 95.0,
    "price-tagline": "per qty, 500ml",
    "tags": ["floor", "cleaner", "lizol"],
  },
  {
    "id": 15,
    "name": "Kissan Tomato Ketchup",
    "description": "Classic Tomato Sauce",
    "img": "",
    "price": 60.0,
    "price-tagline": "per qty, 500gm",
    "tags": ["ketchup", "sauce", "kissan"],
  },
  {
    "id": 16,
    "name": "Surf Excel Matic",
    "description": "Top Load Detergent Powder",
    "img": "",
    "price": 240.0,
    "price-tagline": "per qty, 2kg",
    "tags": ["detergent", "surf", "excel"],
  },
  {
    "id": 17,
    "name": "Good Day Cookies",
    "description": "Butter Cookies",
    "img": "",
    "price": 30.0,
    "price-tagline": "per qty, 200gm",
    "tags": ["cookies", "biscuits", "good day"],
  },
  {
    "id": 18,
    "name": "Moong Dal",
    "description": "Split Yellow Gram",
    "img": "",
    "price": 95.0,
    "price-tagline": "per qty, 1kg",
    "tags": ["dal", "moong", "pulses", "mung", "mung dal"],
  },
  {
    "id": 19,
    "name": "Basmati Rice",
    "description": "Premium Long Grain Rice",
    "img": "",
    "price": 120.0,
    "price-tagline": "per qty, 1kg",
    "tags": ["rice", "basmati", "grains"],
  },
  {
    "id": 20,
    "name": "Real Fruit Juice",
    "description": "Mixed Fruit Juice",
    "img": "",
    "price": 110.0,
    "price-tagline": "per qty, 1L",
    "tags": ["juice", "real", "fruit"],
  },
];
