//
//  IssueCommentSummaryCell.swift
//  Freetime
//
//  Created by Ryan Nystrom on 5/22/17.
//  Copyright © 2017 Ryan Nystrom. All rights reserved.
//

import UIKit
import SnapKit
import IGListKit

final class IssueCommentSummaryCell: UICollectionViewCell, IGListBindable {

    let label = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)

        label.textColor = Styles.Colors.Gray.dark
        label.font = Styles.Fonts.body
        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalTo(Styles.Sizes.gutter)
            make.centerY.equalTo(contentView)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: IGListBindable

    func bindViewModel(_ viewModel: Any) {
        guard let viewModel = viewModel as? IssueCommentSummaryModel else { return }
        label.text = "▶ \(viewModel.summary)"
    }
    
}