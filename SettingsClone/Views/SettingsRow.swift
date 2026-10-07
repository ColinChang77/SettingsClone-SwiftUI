import SwiftUI

/// 單一設定列：彩色圓角圖示 + 標題 + 箭頭
struct SettingsRow: View {
    let item: SettingItem

    var body: some View {
        HStack(spacing: 14) {
            SettingIcon(symbol: item.symbol, color: item.color, secondSymbol: item.secondSymbol)
            Text(item.title)
                .font(.body)
            Spacer()
            Chevron()
        }
        .padding(.leading, 13)
        .padding(.trailing, 18)
        .frame(height: 52)
    }
}

/// 29×29 的圓角方形圖示，裡面放 SF Symbol
struct SettingIcon: View {
    let symbol: String
    let color: Color
    var secondSymbol: String? = nil

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7, style: .continuous)
                .fill(color.gradient)
            if color == .white {
                // Apple Intelligence 的彩虹圖示
                Image(systemName: symbol)
                    .font(.system(size: 21, weight: .medium))
                    .foregroundStyle(
                        AngularGradient(colors: [.orange, .pink, .purple, .blue, .cyan, .orange],
                                        center: .center)
                    )
            } else if let secondSymbol {
                HStack(spacing: 1) {
                    Image(systemName: symbol)
                    Image(systemName: secondSymbol)
                }
                .font(.system(size: 11, weight: .bold))
                .foregroundStyle(.white)
            } else {
                Image(systemName: symbol)
                    .font(.system(size: 17, weight: .medium))
                    .foregroundStyle(.white)
            }
        }
        .frame(width: 29, height: 29)
        .overlay {
            RoundedRectangle(cornerRadius: 7, style: .continuous)
                .stroke(Color.primary.opacity(0.08), lineWidth: 0.5)
        }
    }
}

#Preview {
    SettingsRow(item: SettingItem.main[0])
}
