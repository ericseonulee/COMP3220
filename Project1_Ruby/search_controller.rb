# Dr. Li, TA: Jay Patel(jsp0053@auburn.edu)
# Eric Lee
# COMP3220 - 002 : Programming Languages
# Project_1
# Search controller class
class SearchController

	attr_accessor :searchSuggestionList

	def initialize(search_list = [])
		@searchSuggestionList = search_list
  	end

	def showList()
		# Empty line break
		puts
		for i in 0..@searchSuggestionList.length
			puts @searchSuggestionList[i]
		end
	end

	def updateList(movie_name)
		for i in 0.. @searchSuggestionList.length
			if movie_name.casecmp(@searchSuggestionList[i]) == 0
				@searchSuggestionList.delete_at(i)
			end
		end
		@searchSuggestionList.insert(0, movie_name)	
	end

	def saveListToFile()
		File.open("data.txt", "w+") do |f|
			#f.puts(@searchSuggestionList)
			@searchSuggestionList.each { |element| f.puts(element)}
		end
	end

end
