//
//  ViewController.swift
//  SwiftPinYin
//
//  Created by yangentao on 07/06/2019.
//  Copyright (c) 2019 yangentao. All rights reserved.
//

import UIKit
import SwiftPinYin

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		tick {
			let s = PinYin.findOne(c: "臷") {
				String($0)
			}
			print("臷:[" + s + "]")
		}
		tick {
			let s = PinYin.findAll(s: "杨恩涛1a")
			print(s)
		}
		tick {
			let s = PinYin.findAll(set: Set<Character>("杨恩涛2c")) {
				String($0)
			}
			print(s)
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}

func tick(_ block: () -> Void) {
	let start = Date().timeIntervalSince1970
	block()
	let end = Date().timeIntervalSince1970
	let delta = end - start
	print("Tick: ", delta)
}