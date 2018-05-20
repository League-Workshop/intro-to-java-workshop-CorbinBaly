package section4;

import javax.swing.JOptionPane;

public class QuizGame {
	
	public static void main(String[] args) {
		
		// 1.  Create a variable to hold the user's score 
		int score=0;
		// 2.  Ask the user a question 
		String sorcc=JOptionPane.showInputDialog("What is love?");
		// 3.  Use an if statement to check if their answer is correct
		if(sorcc.equalsIgnoreCase("baby don't hurt me")) {
		
		// 4.  if the user's answer is correct
		score=score+1;
		// -- add one to their score 
		}
	
		// 5.  Create more questions by repeating steps 1, 2, and 3 below. 
		sorcc=JOptionPane.showInputDialog("9+10");
		if(sorcc.equals("21")) {
		score=score+1;
		}
		
		sorcc=JOptionPane.showInputDialog("How do you dab?");
		if(sorcc.equals("You don't")) {
			score=score+1;
					
		}
		else {
			JOptionPane.showMessageDialog(null,"wow you don't dab, you got that wrong.");
			JOptionPane.showMessageDialog(null,"You know what I'm taking off a point.");
			score=score-1;
		}
		
		
		// 6.  After all the questions have been asked, print the user's score 
	JOptionPane.showMessageDialog(null,"Your Score is"+score);
	}
}
