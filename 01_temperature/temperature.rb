#write your code here
def ftoc(temperature)
  celsius = ((temperature-32)*(5.0/9.0))
  return celsius
end

def ctof(celsius)
  fahrenheit = ((celsius*9.0/5.0)+32)
  return fahrenheit
end