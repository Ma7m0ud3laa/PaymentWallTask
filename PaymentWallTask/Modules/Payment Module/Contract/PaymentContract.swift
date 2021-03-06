//
//  PaymentContract.swift
//  PaymentWallTask
//
//  Created SAMEH on 6/23/20.
//
//

import Foundation
import RxSwift


//MARK: - Router
enum PaymentRoute {
    case back
}

protocol PaymentRouterProtocol: class {
    func go(to route:PaymentRoute)
}



//MARK: - Presenter
protocol PaymentPresenterProtocol: class {
    func attach()
    var viewModel: PaymentViewModel! { get }
    func genrateRandomString(of size: Int) -> String?
}



//MARK: - Interactor
protocol PaymentInteractorProtocol: UserInfoProtocol, TransactionProtocol {

    func genrateRandomString(of size: Int) -> String
}



//MARK: - View
protocol PaymentViewControllerProtocol: class {

    var presenter: PaymentPresenterProtocol?  { get set }
    func displayPaymentSuccessedView()
    func removePaymentSuccessedView()
    func displayAlertWith(title: String?, message: String)
}
