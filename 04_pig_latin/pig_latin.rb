#write your code here

def translate words

everyWord = words.split(" ")
everyWordLength = everyWord.length
eWIterator = 0
sentence = ""
word = ""
consword = ""

while eWIterator < everyWordLength

word = everyWord[eWIterator]

    vowels = ["a", "e", "i", "o", "u"]
  returnedword = word
j=0
while j < word.length
    vowels.each do |vowel|
      if vowel == word[0].downcase
      consword += "ay"
      end
    end
j+=1
end
  #######################################################################

  consonants = ["b", "h", "d", "f", "g", "c", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x","y", "z"]

  swapword = ""
  i=0
  while i<word.length
  consonants.each do |consonant|
    if  consonant == word[0]
      if word[0]=="q" and word[1]=="u"

        swapword +="qu"
        word[0] = ""
        word[0] = ""
      else
      swapword += word[0]
      word[0] = ""
      end
    end
  end
  i+=1
  end
consword = word + swapword + "ay"

eWIterator += 1
sentence += " " + consword
end #ew iterator

sentence[0]=""

return sentence
end
