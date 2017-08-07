#write your code here

def echo(string)
return string.to_s
end

def shout(shoutString)
return shoutString.upcase
end

def repeat (repeatString, n = 2)
  addSpace = repeatString + " "
  multipleString = addSpace * n
  stringLength = multipleString.length
return multipleString[0, stringLength-1]
end

def start_of_word string, n
return string[0, n]
end

def first_word string
return string.split(" ")[0]
end

def titleize string
  littleWords = ["and", "over", "the"]
  returnString = ""
  returnStringLength = 0
  capitalizeArray = string.split(" ")
  stringaIndex = 0
  capitalizeArray.each do |stringa|

lwIndex = 0
found = false

while lwIndex < littleWords.length
if stringa == littleWords[lwIndex] and stringaIndex != 0 and found == false
returnString += stringa.downcase + " "
found = true
end



lwIndex += 1
end
stringaIndex += 1

if found == false
  #  if stringa != littleWords[0] #0,1,2
        returnString += stringa.capitalize + " "
  end  #else
      #  returnString += stringa + " "
    #end
  returnStringLength = returnString.length
  end
  return returnString[0, returnStringLength-1]

 #capitalizeArray
end
