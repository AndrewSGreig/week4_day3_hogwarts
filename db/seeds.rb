require('pry')
require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()

harry = Student.new({
  'first_name' => 'Harry',
  'last_name' => 'Potter',
  'age' => 11,
  'house' => 'Griffindor'
  });

harry.save()
hermione = Student.new({
  'first_name' => 'Hermione',
  'last_name' => 'Granger',
  'age' => 10,
  'house' => 'Griffindor'
  });

hermione.save()
draco = Student.new({
  'first_name' => 'Draco',
  'last_name' => 'Malfoy',
  'age' => 13,
  'house' => 'Slytherin'
  });

draco.save()

gryffindor = House.new({
  'name' => 'Gryffindor'
  });
gryffindor.save()

ravenclaw = House.new({
  'name' => 'Ravenclaw'
  })
ravenclaw.save()

hufflepuff = House.new({
  'name' => 'Hufflepuff'
  })
hufflepuff.save()

slytherin = House.new({
  'name' => 'Slytherin'
  })
slytherin.save
# binding.pry
nil
