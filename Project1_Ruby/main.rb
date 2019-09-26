# Dr. Li, TA: Jay Patel(jsp0053@auburn.edu)
# Eric Lee
# COMP3220 - 002 : Programming Languages
# Project_1

require_relative 'search_controller' 


# Initialize default list ...
defaultSearchList = ["toy story", "spider man", "star wars", 
			"harry potter", "the hobbit", "the hangover"]

# Let first search_controller get default list
controllerObject = SearchController.new(defaultSearchList)
controllerObject.showList()

while true do
	puts "Enter a movie name to search or 'exit' to end: "
	input = gets.strip

	if input == "exit"
		break
	else 
		controllerObject.updateList(input)
		controllerObject.showList()
	end
end

controllerObject.saveListToFile()
