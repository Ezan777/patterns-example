// Abstract component
abstract class Pizza {
  List<String> ingredients();
}
// Concrete component
class BasicPizza implements Pizza {
  @override
  List<String> ingredients() {
    return <String>["Dough"];
  }
}
// Abstract decorator
abstract class PizzaIngredients implements Pizza {
  Pizza to_decorate;

  PizzaIngredients(this.to_decorate);

  List<String> ingredients() {
    return addIngredients(to_decorate.ingredients());
  }

  List<String> addIngredients(List<String> ingredients);
}
// Concrete decorator
class Tomato extends PizzaIngredients {
  Tomato(super.to_decorate);

  List<String> addIngredients(List<String> ingredients) {
    ingredients.add("Tomato");
    return ingredients;
  }
}
// Concrete decorator
class Mozzarella extends PizzaIngredients {
  Mozzarella(super.to_decorate);

  List<String> addIngredients(List<String> ingredients) {
    ingredients.add("Mozzarella");
    return ingredients;
  }
}
// Concrete decorator
class Pepperoni extends PizzaIngredients {
  Pepperoni(super.to_decorate);

  List<String> addIngredients(List<String> ingredients) {
    ingredients.add("Pepperoni");
    return ingredients;
  }
}

void main() {
  Pizza margherita = new Mozzarella(new Tomato(new BasicPizza()));
  Pizza pepperoni = new Pepperoni(margherita);

  print(margherita.ingredients());
  print(pepperoni.ingredients());
}