require 'versionomy'
class Array
  def version_sort
    self.sort_by do |item| 
      stripped_version = item.gsub("foo-", "").gsub(".ext", "")
      Versionomy.parse(stripped_version)
    end
  end 
end