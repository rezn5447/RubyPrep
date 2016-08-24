
# Q1 -------------------------------------------------------

class Shop

  def initialize(name, location)
    @name = name
    @location = location
  end

end

# Q2 -------------------------------------------------------

class Shop
    attr_reader :location
    attr_accessor :name

  def initialize(name, location)
    @name = name
    @location = location
  end

end

# Q3 -------------------------------------------------------

class Shop
    attr_reader :location
    attr_accessor :name

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = {}
  end

end

# Q4 -------------------------------------------------------

class Shop
    attr_reader :location
    attr_accessor :name

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = {}
  end

  def add_item(item_name,item_price)
    @inventory.store(item_name,item_price)
  end

end

# Q5 -------------------------------------------------------

class Shop
    attr_reader :location
    attr_accessor :name

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = {}
    @cash_register = 0
  end

  def add_item(item_name,item_price)
    @inventory.store(item_name,item_price)
  end

end

# Q6 -------------------------------------------------------

class Shop
    attr_reader :location
    attr_accessor :name

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = {}
    @cash_register = 0
  end

  def add_item(item_name,item_price)
    @inventory.store(item_name,item_price)
  end

  def sell_item(item_name)
    if @inventory.has_key?(item_name)
      @cash_register += @inventory.delete(item_name)
      true
    else
      puts "Sorry, we don't currently have any #{item_name} in stock."
      false
    end
  end
end

# Q6 -------------------------------------------------------

class Shop
    attr_reader :location
    attr_accessor :name

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = {}
    @cash_register = 0
  end

  def add_item(item_name,item_price)
    @inventory.store(item_name,item_price)
  end

  def sell_item(item_name)
    if @inventory.has_key?(item_name)
      @cash_register += @inventory.delete(item_name)
      true
    else
      puts "Sorry, we don't currently have any #{item_name} in stock."
      false
    end
  end
end

# Q7 -------------------------------------------------------

class Shop
    attr_reader :location
    attr_accessor :name

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = {}
    @cash_register = 0
  end

  def add_item(item_name,item_price)
    @inventory.store(item_name,item_price)
  end

  def sell_item(item_name)
    if @inventory.has_key?(item_name)
      @cash_register += @inventory.delete(item_name)
      true
    else
      puts "Sorry, we don't currently have any #{item_name} in stock."
      false
    end
  end

  def print_inventory
    puts "Here are the current items we have in stock:\n"
    @inventory.each do |item,price|
      puts "\t#{item} (Costs #{price} dollars)\n\n"
    end
  end
end

# Q8 -------------------------------------------------------

class Shop
    attr_reader :location, :membership_ids
    attr_accessor :name

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = {}
    @cash_register = 0
    @membership_ids = []
  end

  def add_item(item_name,item_price)
    @inventory.store(item_name,item_price)
  end

  def sell_item(item_name)
    if @inventory.has_key?(item_name)
      @cash_register += @inventory.delete(item_name)
      true
    else
      puts "Sorry, we don't currently have any #{item_name} in stock."
      false
    end
  end

  def print_inventory
    puts "Here are the current items we have in stock:\n"
    @inventory.each do |item,price|
      puts "\t#{item} (Costs #{price} dollars)\n\n"
    end
  end

  def create_id(str)
    alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    decoder = %w(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26)
    id = ""
    downcased_str = str.downcase 
    str.each_char do |char|
      char_index = alphbet.index(char)
      id += decoder[char_index]
    end
    @membership_ids << id
    id
  end


end
