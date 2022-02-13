-- SUBWAY GENERATOR

-- Define all of the variables.

b = {}
c = {}
m = {}
v = {}
s = {}

b[1] = "Italian"
b[2] = "Italian Herbs & Cheese"
b[3] = "Multigrain"
b[4] = "Flatbread"

c[1] = "Swiss"
c[2] = "Parmesan"
c[3] = "Cheddar"

m[1] = "Ham"
m[2] = "Turkey"
m[3] = "Bacon"
m[4] = "Salami"

v[1] = "Lettuce"
v[2] = "Cucumbers"
v[3] = "Onions"
v[4] = "Green Peppers"
v[5] = "Spinach"
v[6] = "Banana Peppers"

s[1] = "Ranch"
s[2] = "Mayo"
s[3] = "BBQ Sauce"
s[4] = "Chipotle"

bread = math.random(4)
cheese = math.random(3)
meat1 = math.random(4)
meat2 = math.random(4)
veggie1 = math.random(6)
veggie2 = math.random(6)
veggie3 = math.random(6)
sauce = math.random(4)

-- Ask if cheese is wanted on the sub.

io.write("Cheese? (y/n)")
x = io.read()

-- Make sure nothing is repeated.

while meat1 == meat2 do
    meat2 = math.random(4)
end
while veggie1 == veggie2 do
    veggie2 = math.random(6)
end
while veggie2 == veggie3 do
    veggie3 = math.random(6)
end
while veggie3 == veggie1 do
    veggie1 = math.random(6)
end

-- Print the result

if x == "y" then
    print(b[bread])
    print(c[cheese])
    print(m[meat1])
    print(m[meat2])
    print(v[veggie1])
    print(v[veggie2])
    print(v[veggie3])
    print(s[sauce])
end
if x == "n" then
    print(b[bread])
    print(m[meat1])
    print(m[meat2])
    print(v[veggie1])
    print(v[veggie2])
    print(v[veggie3])
    print(s[sauce])
end
if x ~= "n" and x ~= "y" then
    print("ERROR")
end