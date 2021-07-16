//
//  ViewController.swift
//  Swift Practice # 35 animals Speak
//
//  Created by CHEN PEIHAO on 2021/7/16.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //打字使用的textField
    @IBOutlet weak var speakWordTextField: UITextField!
    
    //語調的slider Outlet
    @IBOutlet weak var speakTypeSliderOutlet: UISlider!
    
    //語速的slider Outlet
    @IBOutlet weak var speakSpeedSliderOutlet: UISlider!
    
    //執行的Button的Outlet
    @IBOutlet weak var startSpeakButtonOutlet: UIButton!
    
    //語調的label的Outlet
    @IBOutlet weak var speakTypeLabel: UILabel!
    
    //語速的label的outlet
    @IBOutlet weak var speakSpeedLabel: UILabel!
    
    
    
    
    
    
    //9個動物的Outlet與segmented controller的outlet
    
    @IBOutlet weak var dogButton: UIButton!
    
    @IBOutlet weak var catButton: UIButton!
    
    @IBOutlet weak var pigButton: UIButton!
    
    @IBOutlet weak var monkeyButton: UIButton!
    
    @IBOutlet weak var lionButton: UIButton!
    
    @IBOutlet weak var bearButton: UIButton!
    
    @IBOutlet weak var forgButton: UIButton!
    
    @IBOutlet weak var duckButton: UIButton!
    
    @IBOutlet weak var chickenButton: UIButton!
    
    @IBOutlet weak var languageChangeSegmentedController: UISegmentedControl!
    
    
    //點選任何位置收鍵盤的function
    func hideKeyboardWhenTappedAround() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
    view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
    view.endEditing(true)
    }
    
    
    //9個動物的Outlet與segmented controller的outlet
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func speakTypeChangeSlider(_ sender: Any) {
        speakTypeLabel.text = String(format: "%.2f", speakTypeSliderOutlet.value)
    }
    
    
    @IBAction func speakSpeedChangeSlider(_ sender: Any) {
        speakSpeedLabel.text = String(format: "%.2f", speakSpeedSliderOutlet.value)
    }
    
    
    @IBAction func startToSpeakButton(_ sender: Any) {
        view.endEditing(true)
        let wannaSay = AVSpeechUtterance(string: speakWordTextField.text!)
        let synthesizer = AVSpeechSynthesizer()
        wannaSay.voice = AVSpeechSynthesisVoice(language: "zh-TW")
        wannaSay.pitchMultiplier = speakTypeSliderOutlet.value
        wannaSay.rate = speakSpeedSliderOutlet.value
        
        synthesizer.speak(wannaSay)
        
        
    }
    

    //執行每個動物

    @IBAction func aniamalsSpeak(_ sender: UIButton) {
        
        var aniamalSpeak = AVSpeechUtterance()
        
        if languageChangeSegmentedController.selectedSegmentIndex == 0 {
            
            if sender == dogButton {
                aniamalSpeak = AVSpeechUtterance(string: "這是小狗")
            }
            
            if sender == catButton {
                aniamalSpeak = AVSpeechUtterance(string: "這是小貓")
            }
            
            if sender == pigButton {
                aniamalSpeak = AVSpeechUtterance(string: "這是豬豬")
            }
            
            if sender == monkeyButton {
                aniamalSpeak = AVSpeechUtterance(string: "這是潑猴")
            }
            
            if sender == lionButton {
                aniamalSpeak = AVSpeechUtterance(string: "這是獅子")
            }
            
            if sender == bearButton {
                aniamalSpeak = AVSpeechUtterance(string: "這是台灣黑熊")
            }
            
            if sender == forgButton {
                aniamalSpeak = AVSpeechUtterance(string: "這是呱吉")
            }
            
            if sender == duckButton {
                aniamalSpeak = AVSpeechUtterance(string: "這是鴨鴨")
            }
            
            if sender == chickenButton {
                aniamalSpeak = AVSpeechUtterance(string: "這是小雞")
            }

            
            aniamalSpeak.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            
            //中文輸入結束
            
        }
        
        
        
        
        if languageChangeSegmentedController.selectedSegmentIndex == 1{
            
            if sender == dogButton {
                aniamalSpeak = AVSpeechUtterance(string: "This is a Dog.")
            }
            
            if sender == catButton {
                aniamalSpeak = AVSpeechUtterance(string: "This is a cat.")
            }
            
            if sender == pigButton {
                aniamalSpeak = AVSpeechUtterance(string: "This is a pig.")
            }
            
            if sender == monkeyButton {
                aniamalSpeak = AVSpeechUtterance(string: "This is a monkey.")
            }
            
            if sender == lionButton {
                aniamalSpeak = AVSpeechUtterance(string: "This is a lion.")
            }
            
            if sender == bearButton {
                aniamalSpeak = AVSpeechUtterance(string: "This is a bear.")
            }
            
            if sender == forgButton {
                aniamalSpeak = AVSpeechUtterance(string: "This is a forg.")
            }
            
            if sender == duckButton {
                aniamalSpeak = AVSpeechUtterance(string: "This is a duck.")
            }
            
            if sender == chickenButton {
                aniamalSpeak = AVSpeechUtterance(string: "This is a chicken")
            }

            aniamalSpeak.voice = AVSpeechSynthesisVoice(language: "en-US")
            
            //英文輸入結束
            
        }
        
        
        
        
        if languageChangeSegmentedController.selectedSegmentIndex == 2{
            
            if sender == dogButton {
                aniamalSpeak = AVSpeechUtterance(string: "woof woof woof woof.")
            }
            
            if sender == catButton {
                aniamalSpeak = AVSpeechUtterance(string: "meow meow meow meow.")
            }
            
            if sender == pigButton {
                aniamalSpeak = AVSpeechUtterance(string: "oink oink oink oink.")
            }
            
            if sender == monkeyButton {
                aniamalSpeak = AVSpeechUtterance(string: "gi gi gi gi gi .")
            }
            
            if sender == lionButton {
                aniamalSpeak = AVSpeechUtterance(string: "roar roar roar roar.")
            }
            
            if sender == bearButton {
                aniamalSpeak = AVSpeechUtterance(string: "growl growl growl growl.")
            }
            
            if sender == forgButton {
                aniamalSpeak = AVSpeechUtterance(string: "ribbit ribbit ribbit ribbit.")
            }
            
            if sender == duckButton {
                aniamalSpeak = AVSpeechUtterance(string: "gua gua gua gua.")
            }
            
            if sender == chickenButton {
                aniamalSpeak = AVSpeechUtterance(string: "gu gu gu gu gu ")
            }

            aniamalSpeak.voice = AVSpeechSynthesisVoice(language: "en-US")
            
            //叫聲輸入結束
            
        }
        
        
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(aniamalSpeak)
    }
    
}

