class Triangle
  # write code here

  attr_accessor :side1, :side2, :side3
  @@side_1 = []
  @@side_2 = []
  @@side_3 = []
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @@side_1 << self.side1
    @@side_2 << self.side2
    @@side_3 << self.side3
  end 

  def self.side1
    sideone = @@side_1[0]
    puts sideone
  end

  def self.side2
    sidetwo = @@side_2[0]
    puts sideone
  end

  def self.side3
    sidethree = @@side_3[0]
    puts sideone
  end
  
  def kind(side1, side2, side3)
    
    if side1 === side2 && side2 === side3 && side1 === side3
      return :equilateral
    elsif side1 === side2 || side2 == side3 || side3 === side1 
      return :isosceles
    elsif side1 != side2 && side2 != side3 && side3 != side1
      return :scalene
    else 
      nil 
    end
      
  end 

  class TriangleError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
    # triangle error code
    # def TriangleError
    #   if !side1 || !side2 || !side3 
    #     return Triangle::TriangleError
    #   elsif side1 < 0 || side2 < 0 || side3 < 0
    #     return Triangle::TriangleError
    #   elsif side1+side2 !> side3 || side2+side3 !> side1 || side1+side3 !> side2
    #     return Triangle::TriangleError
    #   else 
    #     nil
    #   end
    # end 
  end

end

t = Triangle.new(5,5,5)
t.kind(@side1, @side2, @side3)
# puts t.side1, t.side2
# puts side1
# puts side2
# puts side3
# puts t.kind