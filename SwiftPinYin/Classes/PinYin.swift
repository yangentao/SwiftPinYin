//
// Created by entaoyang on 2019-07-06.
// Copyright (c) 2019 entao.dev. All rights reserved.
//

import Foundation
import UIKit

public class PinYin {

	//弹=>tan2 dan4
	private static var cacheMap = Dictionary<Character, String>(minimumCapacity: 25000)
	//0:Init, 1:Loading, 2:Loaded
	private static var status: Int = 0

	private static func preLoad() {
		if self.status != 0 {
			return
		}
		self.status = 1

		let bundle = Bundle(for: PinYin.self)
		let fullPath = bundle.bundlePath + "/yang_pinyin.data"
		print(fullPath)
		if let all = try? String(contentsOfFile: fullPath, encoding: .utf8) {
			let ls = all.split(separator: "\n")
			for line in ls {
				if line.isEmpty {
					continue
				}
				if let ch = line.first {
					let py = line[line.index(line.startIndex, offsetBy: 2)...]
					self.cacheMap[ch] = String(py)
				}
			}
		}
		self.status = 2
	}

	public static func findOne(c: Character, onFailed: (Character) -> String) -> String {
		return self.findOne(c: c) ?? onFailed(c)
	}

	public static func findOne(c: Character) -> String? {
		if self.status != 2 {
			self.preLoad()
		}
		return self.cacheMap[c]
	}

	public static func findAll(set: Set<Character>, onFailed: (Character) -> String) -> [Character: String] {
		if self.status != 2 {
			self.preLoad()
		}
		var d = Dictionary<Character, String>(minimumCapacity: set.count * 2 + 1)
		for c in set {
			if let s = self.cacheMap[c] {
				d[c] = s
			} else {
				d[c] = onFailed(c)
			}
		}
		return d
	}

	public static func findAll(set: Set<Character>) -> [Character: String] {
		if self.status != 2 {
			self.preLoad()
		}
		var d = Dictionary<Character, String>(minimumCapacity: set.count * 2 + 1)
		for c in set {
			if let s = self.cacheMap[c] {
				d[c] = s
			}
		}
		return d
	}

	public static func findAll(s: String) -> [Character: String] {
		return self.findAll(set: Set<Character>(s))
	}

	public static func findAll(arr: [Character]) -> [Character: String] {
		return self.findAll(set: Set<Character>(arr))
	}
}

