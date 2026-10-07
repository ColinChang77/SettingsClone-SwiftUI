import SwiftUI

/// 設定列表裡的一個項目：SF Symbol 圖示、圖示底色、標題
struct SettingItem: Identifiable {
    let id = UUID()
    let symbol: String
    let color: Color
    let title: String
    /// 有些圖示由兩個 SF Symbol 並排組成（例如待機模式）
    var secondSymbol: String? = nil
}

extension SettingItem {
    static let main: [SettingItem] = [
        SettingItem(symbol: "gear", color: Color(.systemGray), title: "一般"),
        SettingItem(symbol: "accessibility", color: .blue, title: "輔助使用"),
        SettingItem(symbol: "apps.iphone", color: .blue, title: "主畫面與App資料庫"),
        SettingItem(symbol: "clock.fill", color: .black, title: "待機模式", secondSymbol: "list.bullet.rectangle.fill"),
        SettingItem(symbol: "camera.fill", color: Color(.systemGray), title: "相機"),
        SettingItem(symbol: "button.vertical.left.press", color: .blue, title: "動作按鈕"),
        SettingItem(symbol: "magnifyingglass", color: Color(.systemGray), title: "搜尋"),
        SettingItem(symbol: "apple.intelligence", color: .white, title: "Apple Intelligence與Siri")
    ]

    static let privacy: [SettingItem] = [
        SettingItem(symbol: "hourglass", color: .indigo, title: "螢幕使用時間"),
        SettingItem(symbol: "key.fill", color: Color(.systemGray), title: "密碼"),
        SettingItem(symbol: "hand.raised.fill", color: .blue, title: "隱私權與安全性")
    ]

    static let store: [SettingItem] = [
        SettingItem(symbol: "a.circle.fill", color: .blue, title: "App Store"),
        SettingItem(symbol: "gamecontroller.fill", color: .pink, title: "Game Center"),
        SettingItem(symbol: "wallet.pass.fill", color: .black, title: "錢包與Apple Pay")
    ]

    static let apps: [SettingItem] = [
        SettingItem(symbol: "square.grid.2x2.fill", color: .indigo, title: "App")
    ]
}
