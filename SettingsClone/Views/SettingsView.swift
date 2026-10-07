import SwiftUI

struct SettingsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                Text("設定")
                    .font(.largeTitle.bold())
                    .padding(.leading, 18)
                    .padding(.top, 59)
                    .padding(.bottom, 6)

                AccountCard()

                VStack(spacing: 36) {
                    SettingsSection(items: SettingItem.main)
                    SettingsSection(items: SettingItem.privacy)
                    SettingsSection(items: SettingItem.store)
                    SettingsSection(items: SettingItem.apps)
                }
                .padding(.top, 36)

                // Markdown 語法：點文字打開連結
                Text("想進一步了解設定項目？請參閱 [iPhone使用手冊](https://support.apple.com/zh-tw/guide/iphone/welcome/ios)。")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal, 32)
                    .padding(.top, 12)
                    .padding(.bottom, 24)
            }
            .padding(.horizontal, 17)
        }
        .scrollIndicators(.hidden)
        .background(Color(.systemGroupedBackground))
        .scrollEdgeEffectStyle(.soft, for: .bottom)
        .safeAreaInset(edge: .bottom) {
            SearchBar()
        }
    }
}

#Preview("Light") {
    SettingsView()
}

#Preview("Dark") {
    SettingsView()
        .preferredColorScheme(.dark)
}
