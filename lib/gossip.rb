require 'pry'
require 'csv'


class Gossip
  attr_accessor :author, :content

  def initialize (author, content)
    @author = author
    @content = content
  end

  def save# Méthode pour récupérer tout les gossips 
    CSV.open("./db/gossip.csv", "ab") do |csv|
      csv << [@author, @content]
    end
  end
  
  def self.all# Méthode pour sauvegarder tout les gossips 
    all_gossips = [] #on initialise un array vide
  
    CSV.read("./db/gossip.csv").each do |csv_line|  # va chercher chacune des lignes du csv do
      all_gossips << Gossip.new(csv_line[0], csv_line[1])  # crée un gossip avec les infos de la ligne
          # all_gossips << gossip qui vient d'être créé
    end
    return all_gossips #on retourne un array rempli d'objets Gossip
  end

  def self.find(id_gossip)
    CSV.read("./db/gossip.csv").each_with_index do |line, index|
      if index+1 == id_gossip.to_i
        return line
      end
    end
  end


  def self.update(id, new_author, new_content)

    table = CSV.table("./db/gossip.csv")
    
    table.each_with_index do |line, index|
      if index + 1 == id.to_i  
        line[0] = new_author
        line[1] = new_content
      end
    end

 
  end
end


