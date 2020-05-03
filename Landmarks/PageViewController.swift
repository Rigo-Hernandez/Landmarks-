//
//  PageViewController.swift
//  Landmarks
//
//  Created by Rigo Hernandez on 5/2/20.
//  Copyright © 2020 Rigo Hernandez. All rights reserved.
//
import SwiftUI
import UIKit


struct PageViewController: UIViewControllerRepresentable {
    var controllers: [UIViewController]


    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)


        return pageViewController
    }


    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
        pageViewController.setViewControllers(
            [controllers[0]], direction: .forward, animated: true)
    }
}
