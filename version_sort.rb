class Array

  def version_sort
    self.sort_by do |item| 
      version = item.gsub("foo-", "").gsub(".ext", "")
      
      # create letters
      characters = /[^0-9.].*/.match(version)
      letters = characters[0] if characters
      
      # placements
      placement = 1
      if letters
        dot_or_num = version[version.index(letters) - 1]
        dot_or_num == "." ? placement = 0 : placement = 2
      end

      # make number array
      prelim_numbers = version.gsub(/[^0-9.].*/, "").split(".")
      prelim_numbers.reject! { |c| c.empty? }
      numbers = prelim_numbers.map {|n| n.to_i}
      
      [numbers, placement, letters]
    end
  end 
end