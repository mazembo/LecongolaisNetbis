require "yaml"
@articles = YAML.load(File.read("2017-07-19.yml"))
# @articles2 = YAML.load(File.read("2017-02-02-1.yml"))
#
# puts "the first list has #{@articles1.length} elements"
# puts "the second list has #{@articles2.length} elements"
#
# puts @articles1.class
#
# @articles = @articles1 - @articles2 // not possible as these elements are hashes. Operation only exist on arrays
# puts "the third list (substraction) is made of #{@articles.length} elements"

@articles.each do |article|
   puts article[0]
   puts article[1]["title"]
   puts article[1]["tweet_message"]
   puts article[1]["original_url"]
   puts article[1]["picture"]
   puts "\n"
 end
 puts @articles.length
