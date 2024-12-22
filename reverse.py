# Function to reverse the order of words in a string

def reverse_words(s):
   
    
    words = s.strip().split() # Split the string into words, removing extra spaces
    
    
    reversed_words = words[::-1] # Reverse the list of words
    
    
    return ' '.join(reversed_words) # Join the reversed words with a single space

    """
    Reverses the order of words in a given string.

    Args:
        s (str): Input string containing words separated by spaces.

    Returns:
        str: String with words in reverse order, separated by a single space.
    """

#  Usage
if __name__ == "__main__":
    # Test cases
    print(reverse_words("the sky            is blue"))       # Output: "blue is sky the"
    print(reverse_words("   hello   world   "))  # Output: "world hello"
    print(reverse_words("       My name    is Jannatul"))    # [My reversed string should not contain leading or trailing spaces]
    # Output: "Jannatul is name My"
