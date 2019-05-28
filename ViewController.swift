//
//  ViewController.swift
//  plist
//
//  Created by Sittichai Worachotekamjorn on 14/10/2561 BE.
//  Copyright © 2561 Sittichai Worachotekamjorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtf1: UITextField!
    //var pListAr:Array = [String]()
    var dict:Dictionary = [String:[String]]()
    var name1:Array = [String]()
    var image1:Array = [String]()
    var info1:Array = [String]()
    

    @IBAction func segM1(_ sender: Any) {
        let s:UISegmentedControl = sender as! UISegmentedControl
        txtf1.text = name1[s.selectedSegmentIndex]
        imgV1.image = UIImage.init(named: image1[s.selectedSegmentIndex])
        txtV1.text = info1[s.selectedSegmentIndex]
    }
    
    @IBOutlet weak var txtV1: UITextView!
    @IBOutlet weak var imgV1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = Bundle.main.url(forResource: "test1", withExtension: "plist")!
        let testData = try! Data(contentsOf: url)
        let myPlist = try! PropertyListSerialization.propertyList(from: testData, options: [], format: nil)
        dict=(myPlist as? Dictionary)!
//        for (k,v) in dict {
//            print("keys:",k,"value:",v)
//        }
        name1 = dict["name"]!
        image1 = dict["images"]!
        info1 = dict["info"]!
        print(name1)
        print(image1)
        print(info1)
    }


}

