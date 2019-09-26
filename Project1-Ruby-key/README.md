# Recent Searches Project 

This problem is solving “most recent search” with Ruby programming. Your task is to store and maintain a list of movies looked-up by a user similar to how Google stores our searches (see the image below) and shows most recent search on top.

### Quick start
**Make sure you have Ruby version >= 2.3 installed in your OS. This project is tested with MacOS v10.12.

# Table of Contents
* [Installing/Running the app](#installing-running-the-app)
* [License](#license)
* [Author](#author)

#### Installing/ Running the app

There is no extra installation needed instead of installing Ruby language. Mostly, MacOS offeres in-built ruby. For running the app follow the steps below:
```
# Make sure that you have `search_controller.rb` file in same directory
$ ruby main.rb
```
___

#### API Intro

Some magical APIs are written, like `updateList` API magically handles everything. Given movie name and it updates the list behind the scene for showing most recent itew at first.

```
def updateList(movie_name)	
.
end
```

Another important function is `saveListToFile`. Once user types exit, updated search suggestions list will be written to one `data.txt` file.

```
def saveListToFile()
.
end
```
___


#### Program Time Complexity

The program runs with O(n^2) time complexity.

___


#### License
 [Auburn University](/LICENSE)

___

## Author
 [Jay Patel](/LICENSE)