//
//  DataStore.swift
//  AnimationApp
//
//  Created by Alexander Shevtsov on 04.11.2024.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    // массив с названиями анимаций
    let animations: [AnimationPreset] = [
        .fadeIn,
        .fadeInDown,
        .fadeInLeft,
        .fadeInRight,
        .fadeInUp,
        .fadeOut,
        .fadeOutIn,
        .fall,
        .flash,
        .flipX,
        .flipY,
        .morph,
        .pop,
        .shake,
        .slideDown,
        .slideLeft,
        .slideRight,
        .slideUp,
        .squeeze,
        .squeezeDown,
        .squeezeLeft,
        .squeezeRight,
        .squeezeUp,
        .swing,
        .zoomIn,
        .wobble,
        .zoomOut
    ]
    // названия кривых
    let curves = AnimationCurve.allCases
    
    private init() {}
}
