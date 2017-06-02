#virtual diner, whiteboard

##menues,
#  #breakfast
#  #lunch
#  #dinner
##side menu  

#prices associated with menue items 

#waiter

#show menu choices and costs
  
#chef special pull

#chef special suggested by waiter

#customer makes menu choices  

#provided total at the end


meals = {

 :breakfast => {:burrito => 12, :omelet => 8, :pancakes => 10, :fruit => 4},

 :lunch => {:hamburger => 6, :small_salad => 4, :pizza => 12, :pizza_slice => 3},

 :dinner => {:cheese_burger => 9, :chicken_salad => 6, :pep_pizza => 14, :pep_pizza_slice => 4},
 
 :chef => {:pasta => 13}

}

sides = {
  :fries => 2,
  :eggs => 2,
  :toast => 2,
  :bacon => 2,
  :bacon_fries => 2,
  :apple_slices => 2,
  :soup => 2
}

price = []


puts "Welcome to our restaurant! What menu would you like? breakfast, lunch, dinner, or Chef SpecialL>"

answer = gets.chomp

if answer == "breakfast"
  p "1 == burrito $12.00", "2 == omelet $8.00", "3 == pancakes $10.00"
  puts "choose between 1 through 3 for breakfast please"
 
  c_1 = gets.chomp
  if c_1 == "1"
    puts "12 dollars"
    price << 12
  elsif c_1 == "2"  
    puts "8 dollars"
    price << 8
  elsif c_1 == "3"  
    puts "10 dollars" 
    price << 10
  else
    puts "nothing"
  end
end

if answer == "lunch"
  p "4 == Hamburger $6.00", "5 == Small Salad $4.00", "6 == Pizza $12.00", "7 == Pizza Slice $3.00"
  puts "choose between 4 through 7"
  c_2 = gets.chomp
  if c_2 == "4"
    puts "6 dollars"
    price << 6
  elsif c_2 == "5"  
    puts "4 dollars"
    price << 4
  elsif c_2 == "7"  
    puts "3 dollars" 
    price << 3
  else
    puts "nothing"
  end
end

if answer == "dinner"
  p "8 == Cheesburger $9.00", "9 == Chicken Salad $6.00", "10 == Pep Pizza $14.00", "11 == Pep Slice $4.00"
  puts "choose between 8 through 11 and pick 2 sides"
  c_3 = gets.chomp
  if c_3 == "8"
    puts "9 dollars"
    price << 9
  elsif c_3 == "9"  
    puts "6 dollars"
    price << 6
  elsif c_3 == "10"  
    puts "14 dollars"
    price << 14
  elsif c_3 == "11"  
    puts "4 dollars"
    price << 4
  else
    puts "nothing"
  end
end

if answer == "Chef Special"
  puts "Our chefs delighful pasta dish is amazing! Do you want this?"
  c_4 = gets.chomp
  if c_4 == "Chef Special"
    puts "13 dollars"
    price << 13
  else
    puts "nothing"
  end
end

puts "now please choose your sides by typing sides"
answer = gets.chomp

if answer = sides
  p "1 bacon", "2 eggs", "3 toast", "4 bacon fries", "5 apple slices", "6 soup"
  puts "please choose from our amazing side dishes"
  
  c_5 = gets.chomp
  if c_5 == "1"
    puts "2 dollars"
    price << 2
  elsif c_5 == "2"
    puts "2 dollars"
    price << 2
  elsif c_5 == "3"
    puts "2 dollars"
    price << 2
  elsif c_5 == "4"
    puts "2 dollars"
    price << 2
  elsif c_5 == "5"
    puts "2 dollars"
    price << 2
  elsif c_5 == "6"
    puts "2 dollars"
    price << 2
  else
    puts "nothing"
  end
end










