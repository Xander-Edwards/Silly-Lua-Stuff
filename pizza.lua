-- PIZZA GENERATOR
-- GENERATES 3 RANDOM TOPPINGS FOR A PIZZA

t = {} -- define table to store topping variables

t[1] = "Pepperoni"
t[2] = "Bacon"
t[3] = "Sausage"
t[4] = "Chicken"
t[5] = "Peppers"
t[6] = "Olives"
t[7] = "Mushrooms"
t[8] = "Pineapple"
t[9] = "Anchovies"

-- randomly choose between the toppings
x = math.random(9)
y = math.random(9)
z = math.random(9)

-- make sure none of the toppings repeat
while x == y do
    y = math.random(9)
end

while y == z do
    z = math.random(9)
end

while z == x do
    x = math.random(9)
end

-- print the toppings to the terminal
print(t[x])
print(t[y])
print(t[z])