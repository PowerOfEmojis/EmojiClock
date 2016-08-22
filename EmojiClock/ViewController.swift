//
//  ViewController.swift
//  EmojiClock
//
//  Created by Thomas Paul Mann on 22/08/16.
//  Copyright © 2016 Thomas Paul Mann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets

    @IBOutlet weak var emojiLabel: UILabel!

    // MARK: - Properites

    private let formatter = EmojiTimeFormatter()

    // MARK: - Actions

    @IBAction func didSelectDate(_ picker: UIDatePicker) {
        let clockFaceEmoji = formatter.clockFace(from: picker.date)
        emojiLabel.text = "It's \(clockFaceEmoji) o`clock."
    }

}

