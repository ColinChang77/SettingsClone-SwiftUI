import SwiftUI

/// 一組圓角卡片包起來的設定項目，項目之間有分隔線
struct SettingsSection: View {
    let items: [SettingItem]

    var body: some View {
        VStack(spacing: 0) {
            ForEach(items) { item in
                SettingsRow(item: item)
                if item.id != items.last?.id {
                    Divider()
                        .padding(.leading, 56)
                        .padding(.trailing, 16)
                }
            }
        }
        .background(Color(.secondarySystemGroupedBackground),
                    in: RoundedRectangle(cornerRadius: 26, style: .continuous))
    }
}

#Preview {
    SettingsSection(items: SettingItem.main)
        .padding()
        .background(Color(.systemGroupedBackground))
}
