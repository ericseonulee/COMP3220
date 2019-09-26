# Dr. Li, TA: Jay Patel(jsp0053@auburn.edu)
# COMP3220 - 002 : Programming Languages
# Project_1

require_relative 'search_controller.rb' 


# Initialize default list ...
defaultSearchList = ["toy story", 
						"spider man", 
						"star wars", 
						"harry potter", 
						"the hobbit", 
						"the hangover"]

# Let first search_controller get default list
controllerObject = SearchController.new(defaultSearchList)
puts "seach_list: #{controllerObject.showList()}"

##### 
#
# 1.create endless loop 
# 2.get an input from terminal(console)
# 3.update search suggestion list
# 4.loop should end when user write "exit"
# 5.save updated "searchSuggestionList" to "data.txt" file
#
#####
while true
	puts "Search Movie :"
	searchQuery = gets.chomp
	if searchQuery == "exit"
		break
	end
	controllerObject.updateList(searchQuery)
end

controllerObject.saveListToFile()