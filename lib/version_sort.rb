class Array

  REGEX = /^(.*?)([\d.]*[\d])(.*?)$/
  
  def version_sort
    self.sort_by do |version|
      _, prefix, numbers, suffix = REGEX.match(version).to_a
      numbers = numbers.split(".").map(&:to_i)
      period = suffix.start_with?(".") ? 0 : 1
      [prefix, numbers, period, suffix]
    end
  end 
end