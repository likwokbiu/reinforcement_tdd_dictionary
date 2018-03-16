class Dictionary
  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def add(entry)
    if Hash.try_convert(entry) == nil
      @entries.merge!(entry => nil)
    else
      @entries.merge!(entry)
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include?(keyword)
    @entries.has_key?(keyword)
  end

  def find(word)
    @entries.select {|key,value| key.include? word}
  end
end
