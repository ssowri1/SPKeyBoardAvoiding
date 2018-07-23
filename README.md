# SPKeyBoardAvoiding
It's a smart KeyBoard manager with an active text field using Scroll View along with Constraints in Objective C & Swift 4. The codeless drop-in universal library is compatible with both Swift and Objective C. It will show the chosen text field upon the keyboard while editing or anything else.

![Screenshot](https://github.com/ssowri1/SPKeyBoardAvoiding/blob/master/ScreenShot.gif?raw=true)

## Installation

### Step I
Drag and drop the SPKeyBoardAvoiding scrollview sub class to your project.


### Step II
Change your scrollview class name as SPKeyBoardAvoiding in storyboard which containds bundles of textfields. And create the instance of your scrollview as such as,

    @IBOutlet weak var scrollView: SPKeyBoardAvoiding!


### Step III
Make sure the UITextFieldDelegate is presence in your class & Just put the below textFieldShouldReturn method to your class and update as follows,

        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Reset the scrollview content offset
        self.scrollView.setContentOffset(CGPoint.zero, animated: true)
        self.view.endEditing(true)
        return true
    }
    
Awesome! You're done now. any make fun with your code snippets.

## Authors

[Ssowri1](https://github.com/ssowri1)

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details

## Support or Contact

Having trouble with Pages? Kindly [contact support](https://github.com/contact) and we’ll help you sort it out.


