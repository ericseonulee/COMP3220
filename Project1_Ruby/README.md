# Ruby - Project 1

Project 1 is composed of four mandatory parts :-

* Short Answers
* Problem
* Documentation
* Thinking Assignment

# Parts
* [Short Answers](#short-answers)
* [Problem](#problem)
* [Documentation](#documentation)
* [Thinking Assignment](#thinking_assignment)

____

#### Short Answers

**1. Code**
```
puts "Hello, World"
```
**Output**
```
>Hello, World
```

**2.	Data Structures in Ruby**
    i.	Array – In Ruby, a single Array can hold items of mixed data types such as strings, integers and floats or even a method-call which returns some value.
    ii.	Hash – Hashes are another very useful, and widely used kind of thing that can be used to store other objects. Unlike arrays which are mere lists, Hashes are like dictionaries: You can look up a value from a Hash using a key. 
    iii.	Set – Set implements a collection of unordered values with no duplicates. This is a hybrid of Array's intuitive inter-operation facilities and Hash's fast lookup. Unlike the other collection types, you must add a require statement to make use of the Set class. Also, unlike Array and Hash, Set does not have any kind of special literal syntax. However, you can pass an Array to Set#new. Alternatively, you can use Array#to_set.

**3. Code**
```
nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
nums.each do |num|
    puts num
end
```

**Output**
```
>1
>2
>3
>4
>5
>6
>7
>8
>9
>10
```

**4.Code**
```
personal_info = { "first_name" => "Eric",
           "last_name" => "Lee",
           "tiger_email_id" => "szl0094",
           "banner_id" => 903750990
         }

puts personal_info["first_name"]
puts personal_info["last_name"]
puts personal_info["tiger_email_id"]
puts personal_info["banner_id"]
```

**Output**
```
>Eric
>Lee
>szl0094
>903750990
```

**5.	A class is a blueprint or template or set of instructions to build a specific type of object. Every object is built from a class. Each class should be designed and programmed to accomplish one, and only one, thing. On the other hand, objects are the fundamental building blocks of applications from an object-oriented perspective. In programming terms, an object is a self-contained component that contains properties and methods needed to make a certain type of data useful. An object’s properties are what it knows, and its methods are what it can do.**

  This is an example :
  
**Code**
```
Class Student
   def initialize(age, name, major)
      @stu_age = age
      @stu_name = name
      @stu_major = major
   end
end
```

  and you can create object as follow – 
**Output**
```
stu1 = Student.new(“21”, “Eric”, “Computer Science”
```

**6.	Inheritance is a relation between two classes. It is like the relationship between cats and mammals, and mammals and animals. Encapsulation means that the internal representation of an object is hidden from the outside. Only the object can interact with its internal data. Public methods can be created to open a defined way to access the logic inside an object. Abstraction is a technique for arranging complexity of computer systems. It works by establishing a level of complexity on which a person interacts with the system, suppressing the most complex details below the current level.**

**7. Code**
```
Class Animal {
attr_reader :name, :age
   def initialize(name)
         @name = name
  	   end
	   def age=(a)
         @age = a
  	   end
}
```

**8.	Those are basically used for the initial setup of classes. The attr_reader is short for the getter part of the class, attr_writer is the setter part, and attr_accessor is a combination of both. Using attr_accessor will let you make changes to your instance variables as well as read them or see the values within.**

____

#### Problem

* [main.rb](#file-main-rb)
* [search_controller.rb](#file-search_controller-rb)
