//
//  main.swift
//  GifConvertor
//
//  Created by Harvey Wu on 1/8/21.
//

import Foundation
import ArgumentParser

struct GIFConvert: ParsableCommand {
    @Argument(help: "Complete GIF Path")
    var path: String

    func run() throws {
        let fileURL = URL(fileURLWithPath: path)
        NSGIF.optimalGIFfromURL(fileURL, loopCount: 0, completion: { gifURL in
            print(gifURL)
        })
    }
}

GIFConvert.main()

