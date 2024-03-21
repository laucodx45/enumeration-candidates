# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

  def find(searchId, candidates)
    candidates.each do |c|
      if c[:id] == searchId
        return true
      end
    end
    return nil
  end
  
  def experienced?(candidate)
    if candidate[:years_of_experience] >= 2
      return true
    else 
      return false
    end
  end
  
  def qualified_candidates(candidates)
    subset = []

    candidates.each do |candidate|
      if experienced?(candidate) && 
        candidate[:github_points] >= 100 && 
        (candidate[:languages].include?("Python") || candidate[:languages].include?("Ruby")) &&
        candidate[:age] > 18 && 
        Date.today - candidate[:date_applied] <= 15
          subset.push(candidate)
      end
    end
    return subset
  end
  
  # More methods will go below

  def ordered_by_qualifications(candidates)
    ordered_list = candidates.sort_by {
      |candidate| [candidate[:years_of_experience], candidate[:github_points]]
    }.reverse
    return ordered_list
  end