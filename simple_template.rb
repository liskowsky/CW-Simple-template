class Template

  def initialize(string)
    @string = string
  end

  def render(hash)
    #return hash.inspect
    a = @string.scan(/{{(\w+)}}/).flatten
    x = 0
    hash.length.times do
      @string.gsub!("{{#{a[x]}}}"){|match| if a[x] != nil; match = hash[a[x].to_sym]; else match = ""; end }
      x += 1
    end
    a = []
    @string.gsub!(/{{\w+}}/, "")
    return @string
  end

end
