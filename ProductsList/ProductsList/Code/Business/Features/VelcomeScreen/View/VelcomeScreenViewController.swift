//
//  VelcomeScreenViewController.swift
//  ProductsList
//
//  Created by kira on 04.05.2018.
//  Copyright (c) 2018 Dmitry. All rights reserved.
//

import UIKit
import FSPagerView
import Rswift

final class VelcomeScreenViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private var collectionView: FSPagerView! {
        didSet {
            self.collectionView.register(FSPagerViewCell.self,
                                         forCellWithReuseIdentifier: "cell")

        }
    }

    // MARK: - Propeties
    var presenter: VelcomeScreenPresenting!

    // MARK: - Object lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        VelcomeScreen.Module().configure(viewController: self)
    }

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.itemSize = CGSize(width: collectionView.frame.width, height: collectionView.frame.height)

        // TODO: Ask the Presenter to do some work
        presenter.presentSomething()
    }
}

// MARK: - View logic

extension VelcomeScreenViewController: VelcomeScreenView {

    func displaySomething(viewModel: VelcomeScreen.Entity.ViewModel) {

        // TODO: Display the result from the Presenter

        // nameTextField.text = viewModel.name
    }
}

// MARK: -  FSPagerViewDataSource
extension VelcomeScreenViewController: FSPagerViewDataSource {

    public func numberOfItems(in pagerView: FSPagerView) -> Int {
        return 5//numberOfItems
    }

    public func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        //cell.imageView?.image = ...
        //cell.textLabel?.text = ...
        return cell
    }

}
