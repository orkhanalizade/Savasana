//
//  SavasanaTableCell.swift
//  Savasana
//
//  Created by Orkhan Alizada on 08.11.19.
//  Copyright © 2019 Orkhan Alizada. All rights reserved.
//

import UIKit

private protocol ConfigurableCell: UITableViewCell {
    associatedtype DataType

    func configure(data: DataType)
}

public protocol CellConfigurator {
    static var reusableID: String { get }

    func configure(cell: UIView)
}

open class SavasanaTableCell<DataType>: UITableViewCell, ConfigurableCell {
    typealias DataType = DataType

    open func configure(data: DataType) {
    }

    open func setupUI() {}
}

open class SavasanaItem<CellType: SavasanaTableCell<DataType>, DataType>: CellConfigurator {

    public static var reusableID: String {
        return String(describing: CellType.self)
    }

    let item: DataType

    public init(item: DataType) {
        self.item = item
    }

    public func configure(cell: UIView) {
        guard let cell = cell as? CellType else { return }

        cell.configure(data: item)
    }

}
