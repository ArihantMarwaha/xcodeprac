import UIKit

/*
 // MARK: - Delegate Protocol
 protocol DownloaderDelegate: AnyObject {
     func didFinishDownloading()
 }

 // MARK: - Downloader
 class Downloader {
     weak var delegate: DownloaderDelegate?   // ✅ weak to avoid cycle
     
     func startDownload() {
         print("Downloading...")
         DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
             print("Download complete")
             self.delegate?.didFinishDownloading()
         }
     }
 }

 // MARK: - MainViewController
 class MainViewController: UIViewController, @MainActor DownloaderDelegate {
     var downloader: Downloader?
     var timer: Timer?
     
     override func viewDidLoad() {
         super.viewDidLoad()
         view.backgroundColor = .white
         
         // 1. Downloader + Delegate
         downloader = Downloader()
         downloader?.delegate = self
         downloader?.startDownload()
         
         // 2. Timer with closure (use [weak self])
         timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
             guard let self = self else { return }
             print("Timer tick in \(self)")
         }
         
         // 3. NotificationCenter observer (use [weak self])
         NotificationCenter.default.addObserver(
             forName: UIApplication.didEnterBackgroundNotification,
             object: nil,
             queue: .main
         ) { [weak self] _ in
             self?.appDidEnterBackground()
         }
     }
     
     func didFinishDownloading() {
         print("Delegate: Download finished!")
     }
     
     private func appDidEnterBackground() {
         print("App went to background")
     }
     
     deinit {
         // Important cleanup
         timer?.invalidate()
         NotificationCenter.default.removeObserver(self)
         print("MainViewController deallocated")
     }
 }

 // MARK: - Entry Point
 import PlaygroundSupport
 PlaygroundPage.current.liveView = MainViewController()



 var vc: MainViewController? = MainViewController()
 vc = nil
 */
