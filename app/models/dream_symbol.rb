class DreamSymbol < ApplicationRecord
  belongs_to :dictionary
  

  def self.random
    
    random_dream_symbol = DreamSymbol.all.sample

    if random_dream_symbol.name.strip.empty? || random_dream_symbol.meaning.strip.empty? 
      self.random
    elsif random_dream_symbol.name.length > 30
      self.random
    elsif random_dream_symbol.name.include?("http")
      self.random
    elsif !random_dream_symbol.meaning.include?(".")
      self.random
    elsif random_dream_symbol.meaning.include?("See")
      self.random
    else
      return random_dream_symbol
    end
  end

end
