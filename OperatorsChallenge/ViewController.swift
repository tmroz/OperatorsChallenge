//
//  ViewController.swift
//  OperatorsChallenge
//
//  Created by Paul Giamatti on 6/16/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate
{

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    @IBOutlet weak var textField5: UITextField!
    @IBOutlet weak var textField6: UITextField!
    @IBOutlet weak var textField7: UITextField!
    @IBOutlet weak var textField8: UITextField!
    @IBOutlet weak var textField9: UITextField!
    @IBOutlet weak var textField10: UITextField!
    @IBOutlet weak var textField11: UITextField!
    @IBOutlet weak var textField12: UITextField!
    @IBOutlet weak var equalToLabel: UILabel!
    @IBOutlet weak var notEqualToLabel: UILabel!
    @IBOutlet weak var greaterThanLabel: UILabel!
    @IBOutlet weak var lessThanLabel: UILabel!
    @IBOutlet weak var greaterThanOrEqualToLabel: UILabel!
    @IBOutlet weak var lessThanOrEqualToLabel: UILabel!
    
    @IBOutlet weak var numberOfTicketsTextField: UITextField!
    @IBOutlet weak var availablePackagesLabel: UILabel!
    @IBOutlet weak var ticketsRemainingLabel: UILabel!
    
    @IBOutlet weak var mobileMakersWebView: UIWebView!
    @IBOutlet weak var urlAddOnTextField: UITextField!
    
    var tickets = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name:UIKeyboardWillShowNotification, object: nil);
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name:UIKeyboardWillHideNotification, object: nil);
    }

    func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y -= 200
    }
    func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y += 200
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    @IBAction func mvpButtonPressed(sender: UIButton)
    {
        textField1.resignFirstResponder()
        textField2.resignFirstResponder()
        textField3.resignFirstResponder()
        textField4.resignFirstResponder()
        textField5.resignFirstResponder()
        textField6.resignFirstResponder()
        textField7.resignFirstResponder()
        textField8.resignFirstResponder()
        textField9.resignFirstResponder()
        textField10.resignFirstResponder()
        textField11.resignFirstResponder()
        textField12.resignFirstResponder()
        var number1 = textField1.text.toInt()!
        var number2 = textField2.text.toInt()!
        var number3 = textField3.text.toInt()!
        var number4 = textField4.text.toInt()!
        var number5 = textField5.text.toInt()!
        var number6 = textField6.text.toInt()!
        var number7 = textField7.text.toInt()!
        var number8 = textField8.text.toInt()!
        var number9 = textField9.text.toInt()!
        var number10 = textField10.text.toInt()!
        var number11 = textField11.text.toInt()!
        var number12 = textField12.text.toInt()!
        
        /***************************************************
        * Start Your Code Here For MVP
        ***************************************************/
        var equalTo = (number1 == number2)
        var notEqualTo = (number3 != number4)
        var greaterThan = (number5 > number6)
        var lessThan = (number7 < number8)
        var greaterThanOrEqualTo = (number9 >= number10)
        var lessThanOrEqualTo = (number11 <= number12)
        /***************************************************
        * End Your Code Here For MVP
        ***************************************************/

        equalToLabel.text = "\(equalTo)"
        notEqualToLabel.text = "\(notEqualTo)"
        greaterThanLabel.text = "\(greaterThan)"
        lessThanLabel.text = "\(lessThan)"
        greaterThanOrEqualToLabel.text = "\(greaterThanOrEqualTo)"
        lessThanOrEqualToLabel.text = "\(lessThanOrEqualTo)"
    }
    
    @IBAction func stretchOne(sender: UIButton)
    {
        numberOfTicketsTextField.resignFirstResponder()
        tickets = numberOfTicketsTextField.text.toInt()!

        /***************************************************
        * Start Your Code Here For Stretch 1
        ***************************************************/
        var availablePackages = tickets / 4
        var remainingTickets = tickets % 4
        /***************************************************
        * End Your Code Here For Stretch 1
        ***************************************************/

        availablePackagesLabel.text = "\(availablePackages)"
        ticketsRemainingLabel.text = "\(remainingTickets)"
    }
    
    @IBAction func stretchTwo(sender: UISwipeGestureRecognizer)
    {
        if sender.direction == UISwipeGestureRecognizerDirection.Right
        {
            /***************************************************
            * Start Your Code Here For Stretch 2
            ****************************************************/
            tickets++
            /***************************************************
            * End Your Code Here For Stretch 2
            ***************************************************/
        }
        if sender.direction == UISwipeGestureRecognizerDirection.Left
        {
            /***************************************************
            * Start Your Code Here For Stretch 2
            ****************************************************/
            tickets--
            /***************************************************
            * End Your Code Here For Stretch 2
            ***************************************************/
        }
        numberOfTicketsTextField.text = "\(tickets)"
    }
    
    @IBAction func stretchThree(sender: UIButton)
    {
        urlAddOnTextField.resignFirstResponder()
        
        /***************************************************
        * Start Your Code Here For Stretch 3
        ***************************************************/
        var mobileMakersLink = "http://mobilemakers.co/"
        var urlAddOn = mobileMakersLink + "\(urlAddOnTextField.text)"
        /***************************************************
        * End Your Code Here For Stretch
        ***************************************************/

        var url = NSURL(string: urlAddOn)
        var request = NSURLRequest(URL: url!)
        mobileMakersWebView.loadRequest(request)
    }
}
