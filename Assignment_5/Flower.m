classdef Flower
   properties
      sepalLength
      sepalWidth
      petalLength
      petalWidth
      species
   end
   methods
       function obj = Flower(double_one, double_two, double_three, double_four, char_one)
                obj.sepalLength = double_one;
                obj.sepalWidth  = double_two;
                obj.petalLength = double_three;
                obj.petalWidth  = double_four;
                obj.species = char_one;
        end
      function F = getSLength(obj)
         F = obj.sepalLength;
      end
      function report(obj)
          one= obj.sepalLength;
          two= obj.sepalWidth;
          three= obj.petalLength; 
          four=  obj.petalWidth;
         sprintf('The length and width of its sepal are %.4f cm and %.4fcm respectively, while that of its petal are %.4f and %.4f cm respectively. It belongs to %s the class', one, two, three, four, obj.species)
      end
   end
end