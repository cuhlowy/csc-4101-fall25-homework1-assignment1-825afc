class PhoneBook
    def initialize
      @entries = {}
    end
  
    def add(name, number, is_listed)
      if @entries.has_key?(name)
        return false
      end
  
      if !(number =~ /^\d{3}-\d{3}-\d{4}$/)
        return false
      end
  
      if is_listed
        @entries.each do |other_name, info|
          if info["number"] == number && info["listed"] == true
            return false
          end
        end
      end
  
      @entries[name] = { "number" => number, "listed" => is_listed }
      return true
    end
  
    def lookup(name)
      if @entries.has_key?(name)
        info = @entries[name]
        if info["listed"] == true
          return info["number"]
        end
      end
      return nil
    end
  
    def lookupByNum(number)
      @entries.each do |name, info|
        if info["number"] == number && info["listed"] == true
          return name
        end
      end
      return nil
    end
  
    def namesByAc(areacode)
      result = []
      @entries.each do |name, info|
        if info["number"].start_with?(areacode + "-")
          result << name
        end
      end
      return result
    end
  end
  