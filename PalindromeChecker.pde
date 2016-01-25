public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String lower = word.toLowerCase();

  String noPunc = new String();

  for(int i = 0; i < lower.length(); i++){
    if(Character.isLetter(lower.charAt(i))){
      noPunc = noPunc + lower.charAt(i);
    }
  }

  String noSpace = new String();
  for(int i = 0; i < noPunc.length(); i++){
    if(noPunc.charAt(i) != ' '){
      noSpace = noSpace + noPunc.charAt(i);
    }
  }

  String reversed = new String();
  for(int x = noSpace.length()-1; x >= 0 ; x--){
    reversed = reversed + noSpace.charAt(x);
  }


  if(reversed.equals(noSpace)){
    return true;
  }
  return false;
}

