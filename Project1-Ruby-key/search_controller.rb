# Dr. Li, TA: Jay Patel(jsp0053@auburn.edu)
# COMP3220 - 002 : Programming Languages
# Project_1

# Search controller class
class SearchController

	attr_accessor :searchSuggestionList

	def initialize(search_list = [])
		@searchSuggestionList = search_list
  	end

	def showList()
		return @searchSuggestionList
	end

	def updateList(movie_name)
		if @searchSuggestionList.include?(movie_name)
			@searchSuggestionList.delete(movie_name)
		end
		@searchSuggestionList.insert(0, movie_name)
	end

	def saveListToFile()
		##### 
		#
		# 1.save updated search suggestion list to "data.txt" file 
		#
		#####
		File.open("data.txt", "w+") do |f|
			f.puts(@searchSuggestionList)
		end
	end

end


