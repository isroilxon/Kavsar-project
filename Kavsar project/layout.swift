
import UIKit
extension UIView {
    func top(_ anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, _ constraint: CGFloat) {
        self.topAnchor.constraint(equalTo: anchor, constant: constraint).isActive = true
    }
    func left(_ anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, _ constraint: CGFloat) {
        self.leftAnchor.constraint(equalTo: anchor, constant: constraint).isActive = true
    }
    func right(_ anchor: NSLayoutAnchor<NSLayoutXAxisAnchor>, _ constraint: CGFloat) {
        self.rightAnchor.constraint(equalTo: anchor, constant: constraint).isActive = true
    }
    func bottom(_ anchor: NSLayoutAnchor<NSLayoutYAxisAnchor>, _ constraint: CGFloat) {
        self.bottomAnchor.constraint(equalTo: anchor, constant: constraint).isActive = true
    }
    func height(_ constraint: CGFloat) {
        self.heightAnchor.constraint(equalToConstant: constraint).isActive = true
    }
    func width(_ constraint: CGFloat) {
        self.widthAnchor.constraint(equalToConstant: constraint).isActive = true
    }
    func translateFalse() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
