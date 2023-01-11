//
//  SampleProgressView.swift
//  CustomProgressViewSwiftUI
//
//  Created by Sraavan Chevireddy on 1/11/23.
//

import SwiftUI

struct SampleProgressView: UIViewRepresentable {
    var progress: Float
    var color: Color
    
    func makeUIView(context: Context) -> UIProgressView {
        let progressView = UIProgressView(progressViewStyle: .bar)
        progressView.progressTintColor = UIColor(color)
        progressView.trackTintColor = .gray
        progressView.transform = progressView.transform.scaledBy(x: 1, y: 8)
//        progressView.transform = CGAffineTransform(scaleX: 1, y: 20)
        return progressView
    }
    
    func updateUIView(_ uiView: UIProgressView, context: Context) {
        uiView.progress = progress
        uiView.transform = CGAffineTransform(scaleX: 1, y: 10)
    }
    
    typealias UIViewType = UIProgressView
    
    
}
