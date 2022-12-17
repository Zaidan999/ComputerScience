package database;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.Font;
import java.awt.Color;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import javax.swing.JRadioButton;
import javax.swing.ButtonGroup;
import java.awt.Toolkit;

public class Calculator {

	//input variables.
	private JFrame frame;
	private JTextField textField;
	double firstNumb;
	double secondNumb;
	double result;
	String operation;
	String answer;
	private final ButtonGroup buttonGroup = new ButtonGroup();

	//Launch the application.
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Calculator window = new Calculator();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	//Create the application.
	public Calculator() {
		initialize();
	}

	//Initialize the contents of the frame.
	private void initialize() {
		frame = new JFrame();
		frame.setResizable(false);
		frame.getContentPane().setBackground(Color.DARK_GRAY);
		frame.setBounds(100, 100, 276, 461);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.getContentPane().setLayout(null);
		
		//Set icon of application
		frame.setIconImage(Toolkit.getDefaultToolkit().getImage("C:\\Users\\Asus\\eclipse-workspace\\FinalProject\\src\\Icon\\Calci.png"));
		
		//Calculation operation field
		textField = new JTextField();
		textField.setEnabled(false);
		textField.setFont(new Font("Century Gothic", Font.BOLD, 15));
		textField.setBounds(10, 38, 242, 53);
		frame.getContentPane().add(textField);
		textField.setColumns(10);
		
		//Application title name
		JLabel appName = new JLabel("Calculator");
		appName.setHorizontalAlignment(SwingConstants.CENTER);
		appName.setForeground(new Color(0, 206, 209));
		appName.setFont(new Font("Century Gothic", Font.BOLD, 18));
		appName.setBounds(10, 11, 242, 23);
		frame.getContentPane().add(appName);
		
		//"7" button
		JButton btn7 = new JButton("7");
		btn7.setEnabled(false);
		btn7.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn7.getText();
				textField.setText(number);
			}
		});
		btn7.setBorderPainted(false);
		btn7.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn7.setBackground(Color.WHITE);
		btn7.setBounds(10, 166, 53, 53);
		frame.getContentPane().add(btn7);
		
		//"8" button
		JButton btn8 = new JButton("8");
		btn8.setEnabled(false);
		btn8.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn8.getText();
				textField.setText(number);
			}
		});
		btn8.setBorderPainted(false);
		btn8.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn8.setBackground(Color.WHITE);
		btn8.setBounds(73, 166, 53, 53);
		frame.getContentPane().add(btn8);
		
		//"9" button
		JButton btn9 = new JButton("9");
		btn9.setEnabled(false);
		btn9.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn9.getText();
				textField.setText(number);
			}
		});
		btn9.setBorderPainted(false);
		btn9.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn9.setBackground(Color.WHITE);
		btn9.setBounds(136, 166, 53, 53);
		frame.getContentPane().add(btn9);
		
		//"6" button
		JButton btn6 = new JButton("6");
		btn6.setEnabled(false);
		btn6.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn6.getText();
				textField.setText(number);
			}
		});
		btn6.setBorderPainted(false);
		btn6.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn6.setBackground(Color.WHITE);
		btn6.setBounds(136, 230, 53, 53);
		frame.getContentPane().add(btn6);
		
		//"5" button
		JButton btn5 = new JButton("5");
		btn5.setEnabled(false);
		btn5.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn5.getText();
				textField.setText(number);
			}
		});
		btn5.setBorderPainted(false);
		btn5.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn5.setBackground(Color.WHITE);
		btn5.setBounds(73, 230, 53, 53);
		frame.getContentPane().add(btn5);
		
		//"4" button
		JButton btn4 = new JButton("4");
		btn4.setEnabled(false);
		btn4.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn4.getText();
				textField.setText(number);
			}
		});
		btn4.setBorderPainted(false);
		btn4.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn4.setBackground(Color.WHITE);
		btn4.setBounds(10, 230, 53, 53);
		frame.getContentPane().add(btn4);
		
		//"1" button
		JButton btn1 = new JButton("1");
		btn1.setEnabled(false);
		btn1.setBorderPainted(false);
		btn1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn1.getText();
				textField.setText(number);
			}
		});
		btn1.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn1.setBackground(Color.WHITE);
		btn1.setBounds(10, 294, 53, 53);
		frame.getContentPane().add(btn1);
		
		//"2" button
		JButton btn2 = new JButton("2");
		btn2.setEnabled(false);
		btn2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn2.getText();
				textField.setText(number);
			}
		});
		btn2.setBorderPainted(false);
		btn2.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn2.setBackground(Color.WHITE);
		btn2.setBounds(73, 294, 53, 53);
		frame.getContentPane().add(btn2);
		
		//"3" button
		JButton btn3 = new JButton("3");
		btn3.setEnabled(false);
		btn3.setBorderPainted(false);
		btn3.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn3.getText();
				textField.setText(number);
			}
		});
		btn3.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn3.setBackground(Color.WHITE);
		btn3.setBounds(136, 294, 53, 53);
		frame.getContentPane().add(btn3);
		
		//"0" button
		JButton btn0 = new JButton("0");
		btn0.setEnabled(false);
		btn0.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btn0.getText();
				textField.setText(number);
			}
		});
		btn0.setBorderPainted(false);
		btn0.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btn0.setBackground(Color.WHITE);
		btn0.setBounds(73, 358, 53, 53);
		frame.getContentPane().add(btn0);
		
		//Clear button
		JButton btnClear = new JButton("C");
		btnClear.setEnabled(false);
		btnClear.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				textField.setText(null);
			}
		});
		
		//Addition button
		JButton btnAdd = new JButton("+");
		btnAdd.setEnabled(false);
		btnAdd.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				firstNumb=Double.parseDouble(textField.getText());
				textField.setText("");
				operation="+";
			}
		});
		btnAdd.setBorderPainted(false);
		btnAdd.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btnAdd.setBackground(new Color(127, 255, 212));
		btnAdd.setBounds(199, 102, 53, 53);
		frame.getContentPane().add(btnAdd);
		btnClear.setBorderPainted(false);
		btnClear.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btnClear.setBackground(Color.WHITE);
		btnClear.setBounds(73, 102, 53, 53);
		frame.getContentPane().add(btnClear);
				
		//Backspace button
		JButton btnBackspace = new JButton("\u2190");
		btnBackspace.setEnabled(false);
		btnBackspace.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//Apply backspace function
				String backSpace=null;
				if (textField.getText().length()>0) {
					StringBuilder str=new StringBuilder(textField.getText());
					str.deleteCharAt(textField.getText().length()-1);
					backSpace=str.toString();
					textField.setText(backSpace);
				}
			}
		});
		btnBackspace.setBorderPainted(false);
		btnBackspace.setFont(new Font("Century Gothic", Font.BOLD, 17));
		btnBackspace.setBackground(Color.WHITE);
		btnBackspace.setBounds(136, 102, 53, 53);
		frame.getContentPane().add(btnBackspace);
		
		//Divide button
		JButton btnDivide = new JButton("/");
		btnDivide.setEnabled(false);
		btnDivide.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//Apply divide function
				firstNumb=Double.parseDouble(textField.getText());
				textField.setText("");
				operation="/";
			}
		});
		btnDivide.setBorderPainted(false);
		btnDivide.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btnDivide.setBackground(new Color(127, 255, 212));
		btnDivide.setBounds(199, 294, 53, 53);
		frame.getContentPane().add(btnDivide);
		
		//Dot button
		JButton btnDot = new JButton(".");
		btnDot.setEnabled(false);
		btnDot.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String number=textField.getText()+btnDot.getText();
				textField.setText(number);
			}
		});
		btnDot.setBorderPainted(false);
		btnDot.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btnDot.setBackground(Color.WHITE);
		btnDot.setBounds(10, 358, 53, 53);
		frame.getContentPane().add(btnDot);
		
		//Subtraction button
		JButton btnSubstract = new JButton("-");
		btnSubstract.setEnabled(false);
		btnSubstract.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//Apply subtract function
				firstNumb=Double.parseDouble(textField.getText());
				textField.setText("");
				operation="-";
			}
		});
		btnSubstract.setBorderPainted(false);
		btnSubstract.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btnSubstract.setBackground(new Color(127, 255, 212));
		btnSubstract.setBounds(199, 166, 53, 53);
		frame.getContentPane().add(btnSubstract);
				
		//Multiplication button
		JButton btnMultiply = new JButton("*");
		btnMultiply.setEnabled(false);
		btnMultiply.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//Apply multiply function
				firstNumb=Double.parseDouble(textField.getText());
				textField.setText("");
				operation="*";
			}
		});
		btnMultiply.setBorderPainted(false);
		btnMultiply.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btnMultiply.setBackground(new Color(127, 255, 212));
		btnMultiply.setBounds(199, 230, 53, 53);
		frame.getContentPane().add(btnMultiply);
		
		//Equal button
		JButton btnEqual = new JButton("=");
		btnEqual.setEnabled(false);
		btnEqual.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				//Apply operation of calculation
				String answer;
				secondNumb=Double.parseDouble(textField.getText());
				if (operation=="+") {
					result=firstNumb+secondNumb;
					answer=String.format("%.2f", result);
					textField.setText(answer);
				}
				else if (operation=="-") {
					result=firstNumb-secondNumb;
					answer=String.format("%.2f", result);
					textField.setText(answer);
				}
				else if (operation=="*") {
					result=firstNumb*secondNumb;
					answer=String.format("%.2f", result);
					textField.setText(answer);
				}
				else if (operation=="/") {
					result=firstNumb/secondNumb;
					answer=String.format("%.2f", result);
					textField.setText(answer);
				}
				else {
					answer=String.format("Error!");
					textField.setText(answer);
				}
			}
		});
		btnEqual.setBorderPainted(false);
		btnEqual.setForeground(Color.BLACK);
		btnEqual.setFont(new Font("Century Gothic", Font.BOLD, 20));
		btnEqual.setBackground(new Color(0, 206, 209));
		btnEqual.setBounds(136, 358, 116, 53);
		frame.getContentPane().add(btnEqual);
		
		//Apply ON function
		JRadioButton rdbtnNewRadioButton = new JRadioButton("On");
		rdbtnNewRadioButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				btn1.setEnabled(true);
				btn2.setEnabled(true);
				btn3.setEnabled(true);
				btn4.setEnabled(true);
				btn5.setEnabled(true);
				btn6.setEnabled(true);
				btn7.setEnabled(true);
				btn8.setEnabled(true);
				btn9.setEnabled(true);
				btn0.setEnabled(true);
				
				btnDot.setEnabled(true);
				btnAdd.setEnabled(true);
				btnMultiply.setEnabled(true);
				btnDivide.setEnabled(true);
				btnSubstract.setEnabled(true);
				btnEqual.setEnabled(true);
				
				btnClear.setEnabled(true);
				btnBackspace.setEnabled(true);
				textField.setEnabled(true);
			}
		});
		buttonGroup.add(rdbtnNewRadioButton);
		rdbtnNewRadioButton.setFont(new Font("Century Gothic", Font.BOLD, 11));
		rdbtnNewRadioButton.setBounds(10, 102, 53, 23);
		frame.getContentPane().add(rdbtnNewRadioButton);
		
		//Apply OFF function
		JRadioButton rdbtnOff = new JRadioButton("Off");
		rdbtnOff.setSelected(true);
		rdbtnOff.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				textField.setText(null);
				btn1.setEnabled(false);
				btn2.setEnabled(false);
				btn3.setEnabled(false);
				btn4.setEnabled(false);
				btn5.setEnabled(false);
				btn6.setEnabled(false);
				btn7.setEnabled(false);
				btn8.setEnabled(false);
				btn9.setEnabled(false);
				btn0.setEnabled(false);
				
				btnDot.setEnabled(false);
				btnAdd.setEnabled(false);
				btnMultiply.setEnabled(false);
				btnDivide.setEnabled(false);
				btnSubstract.setEnabled(false);
				btnEqual.setEnabled(false);
				
				btnClear.setEnabled(false);
				btnBackspace.setEnabled(false);
				textField.setEnabled(false);
			}
		});
		buttonGroup.add(rdbtnOff);
		rdbtnOff.setFont(new Font("Century Gothic", Font.BOLD, 11));
		rdbtnOff.setBounds(10, 132, 53, 23);
		frame.getContentPane().add(rdbtnOff);
	}
}
