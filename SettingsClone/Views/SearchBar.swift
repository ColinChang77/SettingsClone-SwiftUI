import SwiftUI

/// iOS 26 浮在底部的玻璃質感搜尋列
struct SearchBar: View {
    var placeholder = "搜尋"

    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 18, weight: .medium))
            Text(placeholder)
                .font(.body)
                .foregroundStyle(.secondary)
            Spacer()
            Image(systemName: "mic.fill")
                .font(.system(size: 19))
        }
        .padding(.horizontal, 18)
        .frame(height: 47)
        .glassEffect(.regular.tint(Color(.secondarySystemGroupedBackground).opacity(0.85)), in: .capsule)
        .padding(.horizontal, 28)
        .offset(y: 5)
    }
}

#Preview {
    SearchBar()
}
