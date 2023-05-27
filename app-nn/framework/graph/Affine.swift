//
//  Affine.swift
//  app-nn
//
//  Created by 顾艳华 on 2023/5/28.
//

import Foundation

class Affine {
    var w: [[Float]]
    var dw: [[Float]] = []
    var x: [[Float]] = []
//    var b: [Float]
    init(w: [[Float]]) {
        self.w = w
    }
    func forward(x: [[Float]]) -> [[Float]]{
        self.x = x
        return matrixMultiplication(x, w)!
    }
    
    func backward(dout: [[Float]]) -> [[Float]]{
        self.dw = matrixMultiplication(transpose(self.x), dout)!
        return matrixMultiplication(dout, transpose(self.w))!
    }
}
