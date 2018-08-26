import Foundation

/*
 * Checks a word for emoji match and returns
 * corresponding unicode.  If no emoji match found,
 * the word string is returned unchanged.
 *
 * @param: word - string to match with emoji
 *
 * @return: String - utf code for matched emoji
 *                   or the original string
 */

func emojicode(word:String) -> String{
    switch word.lowercased() {
    case "beer":
        return "\u{1F37A}"
    case "television", "tv":
        return "\u{1F4FA}"
    default:
        return word
    }
}

/*
 * Prints a string replacing matched words with
 * corresponding emoji
 *
 * @param: str - display
 *
 * @return: String - argument string with some words replaced
 *                   with utf code for corresponding emojis
 */

func emojiate(str:String)-> String{
    
    var word: String = ""
    var result: String = ""
    
    for char: Character in str {
        if(String(char) >= "A" && String(char) <= "z"){
            word.append(char)
        }else{
            result += emojicode(word: word)
            result.append(char)
            word = ""
        }
    }
    result += emojicode(word: word)
    return result
}

let myString = "No TV and no beer make Homer a functional human being."

let emojiString = emojiate(str: myString)

print(emojiString)


