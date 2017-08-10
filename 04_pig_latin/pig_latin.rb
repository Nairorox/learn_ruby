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

  consonants = ["b", "h", "d", "f", "g", "c", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x","y", "z"]
  swapword = "" #set for swaping letters

  i=0   #iterator for every word so it would check for every letter
  while i<word.length
  consonants.each do |consonant|
    if  consonant == word[0] #if first letter is consonants
      if word[0]=="q" and word[1]=="u" #if next letters contain "qu" then add them to swapword and  delete them
        swapword +="qu" #add this "qu"
        word[0] = "" #and delete letter 0
        word[0] = "" #and again 0, because previous was canceled
      elsif word[0]=="s" and word[1]=="c" and word[2] == "h" #if contain "sch"
        swapword += "sch"
        word[0]=""
        word[0]=""
        word[0]=""
      else #if #if its not "sch" or "qu" but it is consonant letter then add to swap just 1 letter and then delete this letter from word
      swapword += word[0]
      word[0] = ""
      end
    end
  end
  i+=1
  end
consword = word + swapword + "ay"  #finish word

eWIterator += 1
sentence += " " + consword   #finish sentence
end #ew iterator

sentence[0]="" #deleting first space in letter

return sentence
end
