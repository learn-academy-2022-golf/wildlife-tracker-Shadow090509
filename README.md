# Wildlife Tracker Challenge

The Forest Service is considering a proposal to place in conservancy a forest of virgin Douglas fir just outside of Portland, Oregon. Before they give the go ahead, they need to do an environmental impact study. They've asked you to build an API the rangers can use to report wildlife sightings.

---

Story 1: In order to track wildlife sightings, as a user of the API, I need to manage animals.

Branch: animal-crud-actions

Acceptance Criteria

(1)Create a resource for animal with the following information:
$ rails db:create
-Created database 'wild_life_development'
-Created database 'wild_life_test'

(2)common name and scientific binomial
$ rails g resource Animal common_name:string scientific_binomial

(3)Can see the data response of all the animals

```ruby
def index
    animals = Animal.all
    render json: animals
  end
```

(4)Can create a new animal in the database

```ruby
def create
  animal = Animal.create(animal_params)
  if animal.valid?
    render json:animal
  else
    render json:animal.errors
  end
end
```

(5)Can update an existing animal in the database

```ruby
def update
  animal = Animal.find(params[:id])
  animal.update(animal_params)
  if animal.valid?
    render json:animal
  else
    render json:animal.errors
  end
end
```

(6)Can remove an animal entry in the database

```ruby
def destroy
  animal = Animal.find(params[:id])
  if animal.destroy
    render json:animal
  else
    render json:animal.errors
  end
end
```
