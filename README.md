# Wildlife Tracker Challenge

The Forest Service is considering a proposal to place in conservancy a forest of virgin Douglas fir just outside of Portland, Oregon. Before they give the go ahead, they need to do an environmental impact study. They've asked you to build an API the rangers can use to report wildlife sightings.

\*-----------------------------------------------------------

Story 1: In order to track wildlife sightings, as a user of the API, I need to manage animals.

Branch: animal-crud-actions

Acceptance Criteria

(1)Create a resource for animal with the following information:
$ rails db:create
-Created database 'wild_life_development'
-Created database 'wild_life_test'
$
(2)common name and scientific binomial
$ rails g resource Animal common_name:string scientific_binomial
$
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

\*-----------------------------------------------------------

Story 2: In order to track wildlife sightings, as a user of the API, I need to manage animal sightings.
Hint: An animal has_many sightings (rails g resource Sighting animal_id:integer ...)
Hint: Date is written in Active Record as yyyy-mm-dd (“2022-07-28")

Branch: sighting-crud-actions

Acceptance Criteria

(1)Create a resource for animal sightings with the following information: latitude, longitude, date
$ rails g resource Tracker latitude:string longitude:string date:date animal_id:integer
$
(2)Can create a new animal sighting in the database

```ruby
  def create
    tracker = Tracker.create(tracker_params)
    if tracker.valid?
      render json:tracker
    else
      render json:tracker.errors
    end
  end
```

(3)Can update an existing animal sighting in the database

```ruby
def update
    tracker = Tracker.find(params[:id])
    tracker.update(tracker_params)
    if tracker.valid?
      render json:tracker
    else
      render json:tracker.errors
    end
  end
```

(4)Can remove an animal sighting in the database

```ruby
 def destroy
    tracker = Tracker.find(params[:id])
    if tracker.destroy
      render json:tracker
    else
      render json:tracker.errors
    end
  end
```

\*-----------------------------------------------------------
