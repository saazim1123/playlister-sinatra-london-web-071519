# Add seed data here. Seed your database with `rake db:seed`

require_relative '../lib/library_parser'

library = LibraryParser.new
library_array = library.files

library_array.each do |file|
    parsed_array = library.parse_filename(file)
    library.build_objects(parsed_array[0], parsed_array[1], parsed_array[2])
    # binding.pry
end



