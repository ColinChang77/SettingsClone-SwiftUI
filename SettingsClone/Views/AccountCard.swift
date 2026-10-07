import SwiftUI

/// 最上方的「Apple 帳號」卡片
struct AccountCard: View {
    var title = "Apple帳號"
    var subtitle = "登入來取用你的iCloud資料、App Store、Apple服務和其他內容。"

    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                Image("AccountRing")
                    .resizable()
                    .scaledToFit()
                Image(systemName: "apple.logo")
                    .font(.system(size: 22))
                    .foregroundStyle(Color(red: 0.13, green: 0.55, blue: 1.0))
                    .offset(y: -1)
            }
            .frame(width: 60, height: 60)

            VStack(alignment: .leading, spacing: 2) {
                Text(title)
                    .font(.system(size: 21, weight: .semibold))
                Text(subtitle)
                    .font(.system(size: 14))
                    .foregroundStyle(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }

            Spacer(minLength: 0)

            Chevron()
        }
        .padding(.leading, 14)
        .padding(.trailing, 18)
        .frame(height: 90)
        .background(Color(.secondarySystemGroupedBackground),
                    in: RoundedRectangle(cornerRadius: 26, style: .continuous))
    }
}

/// 列表右側的灰色箭頭
struct Chevron: View {
    var body: some View {
        Image(systemName: "chevron.forward")
            .font(.system(size: 15, weight: .semibold))
            .foregroundStyle(Color(.tertiaryLabel))
    }
}

#Preview {
    AccountCard()
        .padding()
        .background(Color(.systemGroupedBackground))
}
