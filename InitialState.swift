//
//  InitialState.swift
//  MetalSmokeSimulation
//
//  Created by 須之内俊樹 on 2023/10/01.
//

import Foundation
import MetalKit

class squareInitialState{
    let width: Int
    let height: Int
    let center: simd_float3
    init(center: simd_float3,width: Int,height: Int){
        self.center = center
        self.width = width
        self.height = height
    }
    public func isInsideAndBoundary(pos:simd_float3)->Bool{
        let uppper = center.y - Float(height)/2
        let lower = center.y + Float(height)/2
        let left = center.x - Float(width)/2
        let right = center.x + Float(width)/2
        if(left <= pos.x && pos.x <= right && uppper <= pos.y && pos.y <= lower){
            return true
        }
        else{
            return false
        }
    }
    public func isInside(pos:simd_float3)->Bool{
        let uppper = center.y - Float(height)/2
        let lower = center.y + Float(height)/2
        let left = center.x - Float(width)/2
        let right = center.x + Float(width)/2
        if(left < pos.x && pos.x < right && uppper < center.y && center.y < lower){
            return true
        }
        else{
            return false
        }
    }
}
