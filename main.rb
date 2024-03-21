# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here
pp find(5, @candidates)
print "\n"
pp experienced?(@candidates[1])
print "\n"
pp qualified_candidates(@candidates)
print "\n"
pp ordered_by_qualifications(@candidates)
